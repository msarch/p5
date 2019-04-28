// declare those variables globally and init them in setup()
int OX;
int OY;
boolean showInfo = true;
boolean showMechanics = false;
boolean freezeTime = true;
boolean klk = true;
Cross cross; // the cross : 8 recs and 2 sliders
Wheel wheel; // the spinning wheel
int RPM;     // spinning wheel's revolutions per minute

void setup() {
  fullScreen(P2D);
  // size(500, 500);
  // origin of sketch coordinates at center of screen
  OX = int(width / 2);
  OY = int(height / 2);
  print ("screen center: ", OX, ", ", OY, "\n");
  cross = new Cross(0, 0, 1); // center x,y ; global scale
  RPM = 30; // revolutions per minute
  wheel = new Wheel(RPM, 0); //speed, phase angle

  setupSound();
  setupInfo();
}


void keyPressed() {
  if (key == 'c') { 
    cross.randomizeColor();
  } else if (key == 'i') { 
    showInfo= !showInfo;
  } else if (key == 'w') { 
    showMechanics= !showMechanics;
  } else if (key == ' ') {
    freezeTime = !freezeTime;
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
  playSound();
  displayInfo();
}
