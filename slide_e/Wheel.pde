

class Wheel {
  int xc = 0;
  int yc = 0; // position of group's center
  float scale = 1; 
 
  color k1Color = (122);
  color[] basePalette = { kred, kblue, kgreen, kyellow };
  color[] currentPalette = { kred, kblue, kgreen, kyellow, kred, kblue, kgreen, kyellow };


  Wheel(int xc, int yc, float scale) { // pos and scale
  }

  //color[] currentPalette = colorRandomize();
  void display () {
    stroke(255,0,0,255);
    strokeWeight(1);
    noFill();
    circle(this.xc, this.yc, GLOBAL_RESIZE * DRAWING_RANGE);   
  }

  void Tick() {
    // Get a random element from an array
    for (int i = 0; i < 8; i++) {
      int index = int(random(4));  //   
      currentPalette[i] = basePalette[index];  // Prints one of the four words
    }
  }


}
