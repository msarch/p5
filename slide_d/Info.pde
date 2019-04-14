/*

 
 
 */

String revision = "REV d";
String info = "key 'i' prints version info";

void info_display() {
  scale (1/GLOBSCALE, -1/GLOBSCALE);
  translate(-OX, -OY); // center sketch

  fill(50);
  text(revision, 50, 70);  // Text wraps within text box
  text(info, 50, 90);  // Text wraps within text box
}
