
// declare those variables globally and init them in setup()
int OX;
int OY;
boolean info_display_flag = true;
boolean wheel_display_flag = false;
boolean time_update_flag = false;
PFont f; // display font
Cross cross; // the cross
Wheel wheel1; // the wheels
Wheel wheel2; //
int RADIUS1;
int RADIUS2;
int RPM = 10;


import processing.sound.*;
SoundFile click;


void setup() {
  fullScreen(P2D);
  // size(500, 500);
  // center of screen
  OX = int(width / 2);
  OY = int(height / 2);
  print ("screen center: ", OX, ", ", OY, "\n");
  cross = new Cross(0, 0, 1);
  RADIUS1= int(0.5 * (cross.KA + cross.KB) + 1* cross.KC);
  wheel1 = new Wheel(RADIUS1, RPM, 0); //radius, speed, phase angle
  RADIUS2= RADIUS1 ;
  wheel2 = new Wheel(RADIUS2, RPM, 90); //radius, speed, phase angle (degrees)
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
    info_display_flag= !info_display_flag;
  } else if (key == 'w') { 
    wheel_display_flag= !wheel_display_flag;
  } else if (key == ' ') {
    if (wheel1.running) { 
      wheel1.stop();
    } else {
      wheel1.start();
    }
    if (wheel2.running) { 
      wheel2.stop();
    } else {
      wheel2.start();
    }
    
  } else if (key == 'q') {
    exit();
  }
}

void draw() {  
  translate(OX, OY); // center of sketch to center of screen
  //scale(1,-1); //set global scale to reverse y direction to top
  background(0);

  if (wheel1.running  == true) {
    wheel1.updateSpin();
    cross.updateHSlider(wheel1.trigo);
  }
  if (wheel2.running  == true) {
    wheel2.updateSpin();
    cross.updateVSlider(wheel2.trigo);
  }

  cross.display();

  if (wheel_display_flag == true) { 
    wheel1.display();
    wheel2.display();
  }
  if (info_display_flag  == true) {
    info_display();
  }
}
