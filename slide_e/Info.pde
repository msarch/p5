/*
String revision = "REV D";
 String info = "key 'i' prints version info";
 */
String revision = "REV E";
String info = "key 'w' to show wheel, fix display scale";

void info_display() {
  fill(50);
  text(revision, -OX + 50, -OY + 70);  // upper left
  text(info, -OX + 50, -OY + 90);  // upper left
}
