// kapla_colors
final color kred    = color(255, 69, 0, 255);   //red kapla
final color kgreen  = color(  0, 99, 0, 255);   //green kapla
final color kblue   = color(  0, 0, 140, 255);  //blue kapla
final color kyellow = color(255, 214, 0, 255);  //yellow kapla
final color white   = color(255);

final color[] kColors = { kred, kblue, kgreen, kyellow };


// declare those variables globally and init them in setup()
float GLOBSCALE;  
int OX;
int OY;
Ten machineOne; // the thing
boolean info_display_flag = false;

void setup() {
  fullScreen(P2D);
  // size(500, 500);
  // it is convenient to divide height in 85 vertical units to draw this scene
  GLOBSCALE = float(height/85);  
  // center of screen
  OX = int(width/2);
  OY = int(height/2);
  print ("global scale: ", GLOBSCALE);
  print ("center: ", OX, ", ", OY);
  machineOne = new Ten(0, 0, 1);
  // Create the font

  PFont f;
  // The font must be located in the 
  // current sketch's "data" directory to load successfully
  f = createFont("OpenSans-Light.ttf", 18);
  textFont(f);
}


void keyPressed() {
  if (key == 'c') {
    machineOne.colorRandomize();
  } else if (key == 'i') {
    info_display_flag= !info_display_flag;
  } else {
  }
}


void draw() {  
  translate(OX, OY); // center sketch
  // from now on we are in drawing units, not in pixels anymore
  scale(GLOBSCALE, -GLOBSCALE); //set global scale, reverse y direction
  background(250);
  noStroke();
  fill(0);
  machineOne.display();  
  if (info_display_flag == true) {
    info_display();
  }
}
