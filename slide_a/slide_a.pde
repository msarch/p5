// kapla_colors
color kred    = color(255, 69,   0,   255);   //red kapla
color kgreen  = color(  0, 99,   0,   255);   //green kapla
color kblue   = color(  0,  0, 140,   255);   //blue kapla
color kyellow = color(255, 214,  0,   255);   //yellow kapla
color white   = color(255);
// declare those variables globally and init them in setup()
int vu=85 ; // num of vertical units
// we need our screen divided in 85 vertical units to describe the scene
int ka; // length
int kb; // width
int kc; // thickness

void setup() {
    fullScreen(P2D);
    //size(500, 500);
    int globscale = int(height/vu);  // set scale relative to screen
    ka = 33 * globscale;
    kb = 11 * globscale;
    kc =  6 * globscale;  // proportions of the kapla block
    }
 
void draw() {
    pushMatrix(); // center sketch
    translate(width/2, height/2);
    background(250);
    noStroke();
    fill(0);
    
    // 4+1 horizontal rects 
    // rect( posx, posy, width x, height y)
    rect(-ka-kc-kb/2,  -kb/2-kc,  ka, kc); // top left
    rect( kb/2 + kc,   -kb/2-kc,  ka, kc); // top right
    rect(-ka-kc-kb/2,   kb/2,     ka, kc); // bottom left
    rect( kb/2 + kc,    kb/2,     ka, kc); // bottom right
    
    rect(-ka/2,        -kb/2,     ka, kb); // horiz slider
    
    //// 4+1 vertical rects
    rect( kb/2,    -ka-kc-kb/2,   kc, ka); // top right
    rect(-kb/2-kc, -ka-kc-kb/2,   kc, ka); //
    rect(-kb/2-kc,  kb/2+kc,      kc, ka); // bottom left
    rect( kb/2,     kb/2+kc,      kc, ka); // bottom right
    
    rect(-kb/2,    -ka/2,         kb, ka);
    
    popMatrix();
  }
