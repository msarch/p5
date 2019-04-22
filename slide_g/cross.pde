// kapla_colors
final color kred    = color(255, 69, 0, 255);   //red kapla
final color kgreen  = color(  0, 99, 0, 255);   //green kapla
final color kblue   = color(  0, 0, 140, 255);  //blue kapla
final color kyellow = color(255, 214, 0, 255);  //yellow kapla
final color white   = color(255);
final color[] kColors = { kred, kblue, kgreen, kyellow };

class Cross {
  int xc = 0;
  int yc = 0; // position of group's center
  float scale = 1; 
  // size of the Kapla block
  float GLOBAL_RESIZE = (height / 89); 
  // 89 is total vertical exCrossts of drawing, sreen height is smaller than width
  // we scale the drawing relative to how many vertical units we need to fit scene
  int KA = int(GLOBAL_RESIZE * 33); // length
  int KB = int(GLOBAL_RESIZE * 11); // width
  int KC = int(GLOBAL_RESIZE *  6); // thickness  
  int LONG_OFFSET  = int(KA/2+KB/2+KC); 
  int SHORT_OFFSET = int(KB/2+KC/2);
  int XTRAVEL=  int(KA + KB + KC); // horizontal slider travel extents
  int YTRAVEL= int(0.5 * (KA + KB) + 1 * KC); // vertical slider travel extents
  int horizontalSliderX = 0;    // sliders initial position
  int verticalSliderY = 0;    // sliders initial position
  color hColor;
  color vColor;
  color[] basePalette = { kred, kblue, kgreen, kyellow };
  color[] currentPalette = { kred, kblue, kgreen, kyellow, kred, kblue, kgreen, kyellow };


  Cross(int xc, int yc, float scale) {
    this.xc = xc;
    this.yc = yc;
    this.scale = scale;
    print ( "new cross : center = ", xc, yc, " ; scale = ", scale, "\n"); 
    this.hColor = kred;
    this.vColor = kblue;

  }

  //color[] currentPalette = randomizeColor();

  void display () {
    pushMatrix(); 
    scale(this.scale); // scale for pixel roundup correction
    translate(this.xc, this.yc); // move _units are now pixel units_
    rectMode(CENTER); 
    noStroke();
    //interprets the first two parameters of rect() as the shape's center point, 
    //while the third and fourth parameters are its width and height.
    // rect( center pos x, center pos y, width x, height y)
    // 4+1 horizontal rects 
    fill(currentPalette[0]);
    rect(-LONG_OFFSET, SHORT_OFFSET, KA, KC); // top left    
    fill(currentPalette[1]);
    rect( LONG_OFFSET, SHORT_OFFSET, KA, KC); // top right
    fill(currentPalette[2]);
    rect(-LONG_OFFSET, -SHORT_OFFSET, KA, KC); // bottom left
    fill(currentPalette[3]);
    rect( LONG_OFFSET, -SHORT_OFFSET, KA, KC); // bottom right

    fill(hColor);
    rect(horizontalSliderX, 0, KA, KB); // horiz slider

    // 4+1 vertical rects
    fill(currentPalette[4]);
    rect(-SHORT_OFFSET, LONG_OFFSET, KC, KA); // top left
    fill(currentPalette[5]);
    rect( SHORT_OFFSET, LONG_OFFSET, KC, KA); // top right
    fill(currentPalette[6]);
    rect(-SHORT_OFFSET, -LONG_OFFSET, KC, KA); // bottom left
    fill(currentPalette[7]);
    rect( SHORT_OFFSET, -LONG_OFFSET, KC, KA); // bottom right

    fill(vColor);      
    rect(0, verticalSliderY, KB, KA); // vert slider

    popMatrix();
  }

  void randomizeColor() {
    // Get a random element from an array
    for (int i = 0; i < 8; i++) {
      int index = int(random(4));  //   
      currentPalette[i] = basePalette[index];  // Prints one of the four words
    }
  }


  void cycleColor() {
    //int k=0;
    //int n=myList.size();
    //int i = k++ % n;
    // use i
  }

  void update(Wheel w) {
    horizontalSliderX = int(XTRAVEL * w.trigo[0]);
    verticalSliderY   = int(YTRAVEL * w.trigo[1]);
  }
}
