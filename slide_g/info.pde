String info = 
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
  "        most of functions integrated their own class \n" ;
  //add + to last line then add text on new line";

void info_display() {
  if (show_info) {
    fill(128);
    text(info, -OX + 50, -OY + 50);  // upper left
  }
}
