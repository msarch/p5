

class Ten {
  int xc = 0;
  int yc = 0; // position of group's center
  float scale = 1; 
  // sliders positions
  int slidex = 0;
  int slidey = 0;
  // size of the Kapla block
  final int KA = int(GLOBAL_RESIZE * 33); // length
  final int KB = int(GLOBAL_RESIZE * 11); // width
  final int KC = int(GLOBAL_RESIZE *  6); // thickness  
  final int LONG_OFFSET  = int(KA/2+KB/2+KC); 
  final int SHORT_OFFSET = int(KB/2+KC/2);

  color k1Color = (122);
  color[] basePalette = { kred, kblue, kgreen, kyellow };
  color[] currentPalette = { kred, kblue, kgreen, kyellow, kred, kblue, kgreen, kyellow };


  Ten(int xc, int yc, float scale) {
  }

  //color[] currentPalette = colorRandomize();

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

    fill(k1Color);
    rect(slidex, 0, KA, KB); // horiz slider

    // 4+1 vertical rects
    fill(currentPalette[4]);
    rect(-SHORT_OFFSET, LONG_OFFSET, KC, KA); // top left
    fill(currentPalette[5]);
    rect( SHORT_OFFSET, LONG_OFFSET, KC, KA); // top right
    fill(currentPalette[6]);
    rect(-SHORT_OFFSET, -LONG_OFFSET, KC, KA); // bottom left
    fill(currentPalette[7]);
    rect( SHORT_OFFSET, -LONG_OFFSET, KC, KA); // bottom right

    fill(k1Color);      
    rect(0, slidey, KB, KA); // vert slider

    popMatrix();
  }

  void colorRandomize() {
    // Get a random element from an array
    for (int i = 0; i < 8; i++) {
      int index = int(random(4));  //   
      currentPalette[i] = basePalette[index];  // Prints one of the four words
    }
  }


  void colorCycle() {
    //int k=0;
    //int n=myList.size();
    //int i = k++ % n;
    // use i
  }
}
