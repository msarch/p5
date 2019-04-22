
PFont Monospaced;


String info = 
"rev D - key 'i' toggles version info \n" +
"        key 'c' randomize colors \n" +
"rev E - key 'w' toggles wheel \n" +
"        fix display scale \n" +
"rev F - key 'm' toggles motion, monospaced font \n" +
"        key 'q' exits sketch \n" +
"        fix Cross class constructor \n" +
"        new wheel timer \n";


//add + to last line then add text on new line";

void info_display() {
  fill(0);
  text(info, -OX + 50, -OY + 50);  // upper left
}
