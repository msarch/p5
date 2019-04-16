
// declare those variables globally and init them in setup()
float GLOBAL_RESIZE;
int DRAWING_Y_MAX_RANGE;
int OX;
int OY;
boolean info_display_flag = false;
boolean wheel_display_flag = false;
boolean time_update_flag = false;
PFont f; // display font
Ten tenKaplas; // the thing
Wheel wheel1; // the wheels
Wheel wheel2; //
int RADIUS1;
int RADIUS2;
float WHEEL_REV_PAR_SECOND = 0.5;

  

import processing.sound.*;
SoundFile file;




void setup() {
  fullScreen(P2D);
  // size(500, 500);
  // scale drawing in regard of how many vertical units we want to draw this scene
  DRAWING_Y_MAX_RANGE=89;
  GLOBAL_RESIZE = float(height/DRAWING_Y_MAX_RANGE);  
  // center of screen
  OX = int(width/2);
  OY = int(height/2);
  print ("global scale: ", GLOBAL_RESIZE, "\n");
  print ("screen center: ", OX, ", ", OY, "\n");
  tenKaplas = new Ten(0, 0, 1);
  RADIUS1= int(0.5*(tenKaplas.KA+tenKaplas.KB)+tenKaplas.KC);
  wheel1 = new Wheel(RADIUS1, WHEEL_REV_PAR_SECOND, 0); //radius, speed, phase angle
  RADIUS2= tenKaplas.KA;
  wheel2 = new Wheel(RADIUS2, WHEEL_REV_PAR_SECOND, PI*0.5); //radius, speed, phase angle

  // Create the font
  // The font must be located in the 
  // current sketch's "data" directory to load successfully
  //f = createFont("OpenSans-Light.ttf", 18);
  f = createFont("Monospaced", 12);
  textFont(f);
  
  // Load a soundfile from the /data folder of the sketch and play it back
  file = new SoundFile(this, "click.wav");
  file.play();
}

void updateAngle() {
  
  // TODO
  // update the master angle here
  // if time isnot stopped
  
}

void keyPressed() {
  if (key == 'c') {
    tenKaplas.randomizeColor();
  } else if (key == 'i') {
    info_display_flag= !info_display_flag;
  } else if (key == 'w') {
    wheel_display_flag= !wheel_display_flag;
  } else if (key == 'm') {
    time_update_flag= !time_update_flag;
  } else if (key == 'q') {
    exit();
  }
}


void draw() {  
  translate(OX, OY); // center of sketch to center of screen
  //scale(1,-1); //set global scale to reverse y direction to top
  background(250);
  if (time_update_flag  == true) {
    wheel1.updateSpin();
    wheel2.updateSpin();
    tenKaplas.updateHSlider(wheel1.trigo);
    tenKaplas.updateVSlider(wheel2.trigo);
  }
  tenKaplas.display();
  if (wheel_display_flag == true) { 
    wheel1.display();
    wheel2.display();
  }
  if (info_display_flag  == true) {
    info_display();
  }
}
