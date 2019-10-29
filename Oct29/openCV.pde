import processing.video.*;
import gab.opencv.*;
import java.awt.*;

Capture cam;
OpenCV opencv;
ArrayList <Contour> losCountours;

void setup(){
  size(640,360);
  cam = new Capture(this,Capture.list()[3]);
  opencv = new OpenCV(this,640,360);
  //opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);
   cam.start();
}

void draw(){
  if(cam.width!= 0){
    opencv.loadImage(cam);
    opencv.threshold(70);
    losCountours = opencv.findContours();
    //println(losCountours.size());
    image(opencv.getOutput(),0,0);
    for(Contour c:losCountours){
      
      noFill();
      stroke(0,0,255);
      beginShape();
      for(PVector p: c.getPolygonApproximation().getPoints()){
        vertex(p.x,p.y);
      }
      endShape(CLOSE);
      
      stroke(255,0,0);
      //c.draw();
    }
    

  }
  //opencv.calculateOpticalFlow();
    //for(int i = 0 ; i<width; i+=5){
  //    for(int j = 0; j<height; j+= 5){
  //      PVector p = opencv.getFlowAt(i,j);
  //      if(p.mag()>10){
  //      strokeWeight(random(1,20));
  //      stroke(cam.get(i,j));
  //      line(i,j,i+p.x,j+p.y);
  //      }
  //  }
  //}
  
  
  //Rectangle[] caras = opencv.detect();
  //println(caras.length);
  //for(Rectangle r:caras){
  //  pushMatrix();
  //  translate(r.x,r.y);
  //  rotate(PI);
  //  translate(-r.x,-r.y*2);
  //  image(opencv.getOutput().get(r.x,r.y,r.width,r.height),0,0);
  //  popMatrix();
  //}
  
}

void captureEvent(Capture c) {
  c.read();
}

void keyPressed(){
  if(key == 'a'){
    opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);
  }
  
  if(key == 'b'){
    opencv.loadCascade(OpenCV.CASCADE_MOUTH);
  }
}
