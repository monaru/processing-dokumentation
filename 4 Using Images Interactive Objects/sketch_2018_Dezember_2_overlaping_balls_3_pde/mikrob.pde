class Mikrob {
  float x, y;
  float r;
  float speedX = 3;
  float speedY = 3;
  
  
Mikrob(float tempX, float tempY, float tempR){ 
    x = tempX;
   y = tempY;
   r = tempR;
}

void display() {
  noStroke();
  fill(#ffffff);
  strokeWeight(7);
  ellipse(x,y,r*2,r*2);
  
  imageMode(CENTER);
  photo = loadImage("mikrob.png");
  photo.resize(50,50);
  image(photo, x,y);
  
  x = x + speedX;
  if (x >= width || x <= 0) {
    speedX = -speedX;
  }
  
  y = y + speedY;
  if (y >= height || y <= 0) {
    speedY = -speedY;
  }
}
}

  
