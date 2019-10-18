import processing.video.*; 
Capture cam; 
 
void setup() { 
  size(1280, 800); 
  cam = new Capture(this, Capture.list()[0]);
  cam.start(); 
} 
 
void draw() { 
  //image(cam, 0, 0); 
  for(int i = 0; i<cam.width; i+=10){
    for(int j = 0; j<cam.height; j+= 10){
      color c = cam.get(i,j);
      stroke(c);
      //noFill();
      strokeWeight(random(10));
      rect(i,j,random(-40,40),random(-40,40));
    }
  }
} 

void captureEvent(Capture c) {
  c.read();
}
