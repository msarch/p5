

class Ten {
  int xc = 0;
  int yc = 0; // position of group's center
  float scale = 1; 
  // proportions of the kapla block
  int ka = 33; // length
  int kb = 11; // width
  int kc = 6; // thickness  
  int long_offset = ka/2+kb/2+kc; 
  int short_offset = kb/2+kc/2;
  // sliders positions
  int slidex = 0;
  int slidey = 0;
  
  Ten(int xc, int yc, float scale) {
  }
  
   void display () {
     pushMatrix(); // center sketch, global scale
     translate(xc, yc);
     scale(scale);
     rectMode(CENTER); 
     //interprets the first two parameters of rect() as the shape's center point, 
     //while the third and fourth parameters are its width and height.
     // rect( center pos x, center pos y, width x, height y)
     // 4+1 horizontal rects 
     print (" l=",long_offset," s=", short_offset);
     rect(-long_offset,  short_offset,  ka, kc); // top left    
     rect( long_offset,  short_offset,  ka, kc); // top right
     rect(-long_offset, -short_offset,  ka, kc); // bottom left
     rect( long_offset, -short_offset,  ka, kc); // bottom right
      
     rect(slidex, 0, ka, kb); // horiz slider
      
      //// 4+1 vertical rects
      rect(-short_offset,  long_offset, kc, ka); // top left
      rect( short_offset,  long_offset, kc, ka); // top right
      rect(-short_offset, -long_offset, kc, ka); // bottom left
      rect( short_offset, -long_offset, kc, ka); // bottom right
      
      rect(0, slidey, kb, ka); // vert slider
      
      popMatrix();

  }
}
