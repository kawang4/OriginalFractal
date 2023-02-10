public void setup() {
  size(400, 400);
}
public void draw() {
  circles(200, 200, 300);
  move(HALF_PI);
  frameRate(10);
}

float x = THIRD_PI + HALF_PI;
public void circles(int z, int y, int len) {
  if (len <= 20) {
    arc(z, y, len, len, 0, x);
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    arc(z, y, len-10, len-10,  x, x + THIRD_PI + HALF_PI);
    ellipse(z-len/2, y-len/2, len/2, len/2);
    ellipse(z-len/2, y+len/2, len/2, len/2);
    ellipse(z+len/2, y-len/2, len/2, len/2);
    ellipse(z+len/2, y+len/2, len/2, len/2);
    
  }
  else {
    arc(z, y, len, len, 0, x);
    fill((int)(Math.random()* 122 + 122), (int)(Math.random()*256), (int)(Math.random()*122 + 122));
    arc(z, y, len + 30, len + 30,  x, x + THIRD_PI + HALF_PI);
    ellipse(z-len/2, y-len/2, len/2, len/2);
    ellipse(z-len/2, y+len/2, len/2, len/2);
    ellipse(z+len/2, y-len/2, len/2, len/2);
    ellipse(z+len/2, y+len/2, len/2, len/2);
    circles(z, y, len-10);
    }
}



public void move(float deg) {
  x += deg;
}
