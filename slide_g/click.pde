import processing.sound.*;
SoundFile click;

void setupSound() {
  // Load a soundfile from the /data folder of the sketch and play it back
  click = new SoundFile(this, "click.wav");
  click.play();
}

void playSound() {
  if (klk) {
    click.play();
    klk = !klk;
  }
}
