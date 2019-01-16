/*Contamination
  Mona Ruppert
  
  Everytime a microb touches the feard face it screams out of disgust. 
*/







Mikrob M1;
Mikrob M2;
Mikrob M3;
Mikrob M4;
Mikrob M5;
Mikrob M6;
Sick Si1;
Sick Si2;
Sick Si3;
Sick Si4;
Sick Si5;
Sick Si6;
Slightly Sl1;


// SOUND + PHOTO ---------

import processing.sound.*;
SoundFile file;
float L;

PImage photo;
PImage background;


// SETUP ---------

void setup(){
  size(600,400);
  M1 = new Mikrob(10,399,15);
  M2 = new Mikrob(599,199,15);
  M3 = new Mikrob(500,112,15);
  M4 = new Mikrob(1,1,15);
  M5 = new Mikrob(290,30,15);
  M6 = new Mikrob(300,200,15);
  Si1 = new Sick(250,200,10);
  Si2 = new Sick(1,130,10);
  Si3 = new Sick(340,1,10);
  Si4 = new Sick(500,220,10);
  Si5 = new Sick(3,20,10);
  Si6 = new Sick(110,5,10);
  Sl1 = new Slightly(500,300,10);  
  

}

// DRAW ---------

void draw() {
  background(255);
// background = loadImage("background.jpg");

  float d1 = dist(M1.x, M1.y, Sl1.x, Sl1.y);
  float d2 = dist(M2.x, M2.y, Sl1.x, Sl1.y);
  float d3 = dist(M3.x, M3.y, Sl1.x, Sl1.y);
  float d4 = dist(M4.x, M4.y, Sl1.x, Sl1.y);
  float d5 = dist(M5.x, M5.y, Sl1.x, Sl1.y);
  float d6 = dist(M6.x, M6.y, Sl1.x, Sl1.y);
    
  if (d1 < M1.r + Sl1.r || d2 < M2.r + Sl1.r || d3 < M3.r + Sl1.r || d4 < M4.r + Sl1.r || d5 < M5.r + Sl1.r || d6 < M6.r + Sl1.r) {
    background (255,0,0,30);
    L=0;
    file = new SoundFile(this, "Fail.mp3");
    file.play();
    file.amp(1);
    file.rate(L);
    
    
  } 

  M1.display();
  M2.display();
  M3.display();
  M4.display();
  M5.display();
  M6.display();
  Si1.display();
  Si2.display();
  Si3.display();
  Si4.display();
  Si5.display();
  Si6.display();
  Sl1.display();

}
