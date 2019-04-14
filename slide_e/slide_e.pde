// kapla_colors
final color kred    = color(255, 69, 0, 255);   //red kapla
final color kgreen  = color(  0, 99, 0, 255);   //green kapla
final color kblue   = color(  0, 0, 140, 255);  //blue kapla
final color kyellow = color(255, 214, 0, 255);  //yellow kapla
final color white   = color(255);

final color[] kColors = { kred, kblue, kgreen, kyellow };


// declare those variables globally and init them in setup()
Ten machineOne; // the thing
Wheel wheel; // the wheel
float GLOBAL_RESIZE;
int DRAWING_RANGE;
int OX;
int OY;
boolean info_display_flag = false;
boolean wheel_display_flag = false;

void setup() {
  fullScreen(P2D);
  // size(500, 500);
  // scale drawing in regard of how many vertical units we want to draw this scene
  DRAWING_RANGE=89;
  GLOBAL_RESIZE = float(height/DRAWING_RANGE);  
  // center of screen
  OX = int(width/2);
  OY = int(height/2);

  print ("global scale: ", GLOBAL_RESIZE);
  print ("center: ", OX, ", ", OY);
  machineOne = new Ten(0, 0, 1);
  wheel = new Wheel(0, 0, 1);
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
  } else if (key == 'w') {
    wheel_display_flag= !wheel_display_flag;
  }
}


void draw() {  
  translate(OX, OY); // center of sketch to center of screen
  //scale(1,-1); //set global scale to reverse y direction to top
  background(250);
  machineOne.display();
  if (wheel_display_flag == true) { 
    wheel.display();
  }
  if (info_display_flag == true) {
    info_display();
  }
}
