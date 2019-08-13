//variables globales
float x;
float dx;
float r;
float dr;

// establece las condiciones de inicio del programa
void setup(){
  size(400,400);
  background(255);
  x=0;
  dx = 1;
  r = 0;
  dr=0.01;
}

// se repetir mientras el programa esté activo 
void draw(){
  background(255);
  x+=dx;
  r+=dr;
  noStroke();
  fill(255,0,0);
  particula2(x,200);
  particula2(0,0);
  if(x>width){
    dx=-1;
  }
  if(x<0){
    dx *= -1; 
  }
}

void particula1(float x_, float y_){
  pushMatrix();
  translate(-50,-50);
  for(int i = 0; i<100;i+=10){
    for(int j = 0; j<100; j+= 10){
      fill(random(255));
      rect(x_+i,y_+j,10,10);
    }
  }
  popMatrix();
}

void particula2(float x_, float y_){
  pushMatrix();
  translate(x_,y_);
  rotate(r);
  for(int i = 200; i>0; i-=5){
    rotate(i*0.001);
    rectMode(CENTER);
    strokeWeight(0.3);
    stroke(255);
    fill(i,0,0);
    rect(0,0,i,i);
  }
  popMatrix();
}
