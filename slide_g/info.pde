PFont f; // display font
String infoString;

void setupInfo() {
  // Create the font
  // The font must be located in the 
  // current sketch's "data" directory to load successfully
  //f = createFont("OpenSans-Light.ttf", 18);
  f = createFont("Monospaced", 12);
  textFont(f);

  infoString = 
    "rev D  \n" + 
    "        key 'i' toggles version info \n" +
    "        key 'c' randomize colors \n" +
    "rev E \n" +  
    "        key 'w' toggles wheel \n" +
    "        fix display scale \n" +
    "rev F \n" + 
    "        key 'space' toggles motion, " +
    "        monospaced font \n" +
    "        key 'q' exits sketch \n" +
    "        fix Cross class constructor \n" +
    "        porper wheel timer \n"+
    "rev G  \n" + 
    "        fix sliders travel extents \n" +
    "        soundtrack class, sound at change dir \n" +
    "        most of functions integrated their own class \n" ;
  //add + to last line then add text on new line";
}

void displayInfo() {
  if (showInfo) {
    fill(128);
    text(infoString, -OX + 50, -OY + 50);  // upper left
  }
}
