/*Sin and cos
  Mona Ruppert
  
  This sketch uses sin and cos to create a pattern.
*/

void setup() {
 size(700,700);
 background(255,255,255);
}

void draw(){
  
  float t = (float)frameCount;

  
 translate(0,height/2);
 
ellipse(frameCount, sin(radians(frameCount))*300,50,50);
 
ellipse(frameCount, sin((t/10))*100,50,50);

 translate(width/2,0);
  
  ellipse(sin(t/100)*300, cos(t/300)*100, 50,50);
  
  pushMatrix();
   translate(300,100);
 
rect(frameCount, sin(radians(frameCount))*300,50,50);
 
rect(frameCount, sin((t/10))*100,50,50);

rect(sin(t/100)*300, cos(t/300)*100, 50,50);
  popMatrix();
}
