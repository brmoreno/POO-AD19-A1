class Cubo{
  float x,y,z;
  float rx,ry;
  float t;
  color c;
  float dx,dy,dz;
  float ddx,ddy,ddz;
  float ax,ay,az;
  float drx,dry;
  
  Cubo(){
    this.x=0;
    this.y = 0;
    this.z = 0;
    this.rx= random(TWO_PI);
    this.ry= random(TWO_PI);
    this.t = random(10,50);
    this.c = color(random(255),random(255),random(255));
    this.ddx= random(-0.05,0.05);
    this.ddy= random(-0.05,0.05);
    this.ddz= random(-0.05,0.05);
    this.ax = random(20,100);
    this.ay = random(20,100);
    this.az = random(20,100);
    this.drx= random(-0.05,0.05);
    this.dry= random(-0.05,0.05);
  }
  
  void display(){
    this.dx += this.ddx;
    this.dy += this.ddy;
    this.dz += this.ddz;
    this.x = sin(dx)*ax;
    this.y = sin(dy)*ay;
    this.z = sin(dz)*az;
    this.rx += this.drx;
    this.ry += this.dry;
    
    pushMatrix();
    translate(this.x,this.y, this.z);
    rotateX(this.rx);
    rotateY(this.ry);
    fill(this.c);
    noStroke();
    box(this.t);
    popMatrix();
  }
}

ArrayList <Cubo> cubos;

void setup(){
  size(400,400,P3D);
  cubos = new ArrayList <Cubo>();
  for(int i = 0; i<200; i++){
    cubos.add(new Cubo());
  }

}

void draw(){
  background(255);
  lights();
  translate(width/2,height/2);
  rotateY(mouseX*0.01);
  for(Cubo c: cubos){
    c.display();
  }
}
