
// declare those variables globally and init them in setup()
int OX;
int OY;
boolean show_info = true;
boolean show_mechanics = false;
boolean freeze = true;
PFont f; // display font
Cross cross; // the cross
Wheel wheel; // the wheels
int RPM; // revolutions per minute

import processing.sound.*;
SoundFile click;

void setup() {
  fullScreen(P2D);
  // size(500, 500);
  // center of screen
  OX = int(width / 2);
  OY = int(height / 2);
  print ("screen center: ", OX, ", ", OY, "\n");
  cross = new Cross(0, 0, 1); // center x,y ; global scale
  RPM = 10; // revolutions per minute
  wheel = new Wheel(RPM, 0); //radius, speed, phase angle
  
  // Create the font
  // The font must be located in the 
  // current sketch's "data" directory to load successfully
  //f = createFont("OpenSans-Light.ttf", 18);
  f = createFont("Monospaced", 12);
  textFont(f);
  
  // Load a soundfile from the /data folder of the sketch and play it back
  click = new SoundFile(this, "click.wav");
  click.play();
}


void keyPressed() {
  if (key == 'c') { 
    cross.randomizeColor();
  } else if (key == 'i') { 
    show_info= !show_info;
  } else if (key == 'w') { 
    show_mechanics= !show_mechanics;
  } else if (key == ' ') {
    freeze = !freeze;
  } else if (key == 'q') {
    exit();
  }
}

void draw() {  
  translate(OX, OY); // center of sketch to center of screen
  //scale(1,-1); //set global scale to reverse y direction to top
  background(0);
  wheel.update();
  cross.update(wheel);
  cross.display();
  wheel.display();
  info_display();
}
