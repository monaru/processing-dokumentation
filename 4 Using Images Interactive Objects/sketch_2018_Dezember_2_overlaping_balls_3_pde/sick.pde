class Sick {
  float x, y;
  float r;
  float speedX = 1;
  float speedY = 1;
  

  
Sick(float tempX, float tempY, float tempR){ 
    x = tempX;
   y = tempY;
   r = tempR;
}

void display() {
  noStroke();
  fill(#95F0FD);
  strokeWeight(4);
  ellipse(x,y,r*2,r*2);
  
  imageMode(CENTER);
  photo = loadImage("sick.png");
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

  
