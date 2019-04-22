

class Wheel {
  color bluePrint = color(50, 50, 200, 200);
  int revPerMin;
  float startAngle;
  float currentAngle;
  float k;
  float[] trigo;
  int radius;
  int lastTime;
  boolean running; 

  Wheel(int radius, int revPerMin, float startAngle) {
    this.revPerMin=revPerMin;
    this.startAngle = (startAngle/ 360) *TWO_PI;
    this.currentAngle = startAngle;
    this.lastTime = 0;
    this.trigo = new float[3];
    this.radius = radius;
    this.running = false;
    this.k = TWO_PI * (0.001 / 60) * this.revPerMin;
    print ( "new wheel: rad = ", radius, "; rpm = ", revPerMin, "; phase = ", startAngle, "\n");
  }


  //color[] currentPalette = randomizeColor();
  void display () {
    stroke(bluePrint);
    strokeWeight(1);
    noFill();
    circle(0, 0, this.radius*2);
  }

  void updateSpin() {
    // use an array to return trig values
    this.currentAngle = (this.currentAngle + (this.k * this.dt()))% TWO_PI;
    this.trigo[0]= this.radius * cos(this.currentAngle); // x
    this.trigo[1]= this.radius * sin(this.currentAngle); // y
    this.trigo[2] = int( 360 / TWO_PI * this.currentAngle);
    //print ("a = ", this.trigo[2],  "\n");
  }

  void start() {
    lastTime = millis();
    running = true;
    //print ("started at", millis(), "milliseconds", "\n");
  }

  void stop() {
    running = false;
    //print ("stopped at", millis(), "\n");
  }

  int dt() {
    int elapsed;
    if (running) {
      elapsed = (millis() - this.lastTime);
      this.lastTime = millis();
    } else {
      elapsed = (0);
    }
    return elapsed;
  }
}
