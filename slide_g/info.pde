
PFont Monospaced;


String info = 
"rev D - key 'i' toggles version info \n" +
"        key 'c' randomize colors \n" +
"rev E - key 'w' toggles wheel \n" +
"        fix display scale \n" +
"rev F - key 'space' toggles motion, " +
"        monospaced font \n" +
"        key 'q' exits sketch \n" +
"        fix Cross class constructor \n" +
"        porper wheel timer \n"+
"rev G - TODO fix sliders bumping \n" +
"        TODO sound at sliders reversing direction \n" ;


//add + to last line then add text on new line";

void info_display() {
  fill(128);
  text(info, -OX + 50, -OY + 50);  // upper left
}
