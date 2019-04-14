

class Wheel {
  color bluePrint = color(50, 50, 200, 200);
  float revPerSecond;
  float startAngle;
  float currentAngle;
  float[] trigo;
  int radius;

  Wheel(int radius, float revPerSecond, float startAngle) {
    this.revPerSecond=revPerSecond;
    this.startAngle = startAngle;
    this.currentAngle = startAngle;
    this.trigo = new float[2];
    this.radius = radius;
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
    float da = TWO_PI * millis() * 0.001;

    // TODO
    // store current pos in case of stop
    //

    this.currentAngle = this.revPerSecond * da; // angle
    this.trigo[0]= this.radius * cos(this.currentAngle); // x
    this.trigo[1]= this.radius * sin(this.currentAngle); // y
  }
}
