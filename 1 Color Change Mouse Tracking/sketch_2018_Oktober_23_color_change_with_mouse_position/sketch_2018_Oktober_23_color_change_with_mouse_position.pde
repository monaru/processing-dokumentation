/*Color Change; Mouse Tracking
  Mona Ruppert
  
  In this sketch the color changes by moving the mouse in x- or y-direction. 
*/

void setup(){
  size(800,400);
  
}

void draw(){
  background(mouseY,0,mouseX);
  stroke(250,249,249);
  fill(mouseX,mouseY,0);
  strokeWeight(78);
  rect(50,50,690,290);
  
}
