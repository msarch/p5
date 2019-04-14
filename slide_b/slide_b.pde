// kapla_colors
color kred    = color(255, 69,   0,   255);   //red kapla
color kgreen  = color(  0, 99,   0,   255);   //green kapla
color kblue   = color(  0,  0, 140,   255);   //blue kapla
color kyellow = color(255, 214,  0,   255);   //yellow kapla
color white   = color(255);
// declare those variables globally and init them in setup()
int vu;
float globscale =1;  
int ox;
int oy;
Ten ten; // the thing

void setup() {
    //fullScreen(P2D);
    size(500, 500);
    // we need 85 vertical units to draw this scene
    vu=85 ; // num of vertical units
    globscale = float(height/vu);  
    ox = int(width/2);
    oy = int(height/2);
    ten = new Ten(0,0,1);
  }
 
void draw() {
    scale(globscale,-globscale); //set global scale, reverse y direction
    translate(ox,oy); // center sketch
    background(250);
    noStroke();
    fill(0);
    ten.display();
      
  }
  
  
