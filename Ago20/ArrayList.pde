class Particula{
  
  //atributos
  float x,y;
  float r;
  float dx,dy,dr;
  int max;
  int cambio;
  float sat;
  
  //métodos
  //constructor
  Particula(float x_ , float y_, float r_, float dx_, float dy_, float dr_, int max_, int cambio_){
    this.x = x_;
    this.y = y_;
    this.r = r_;
    this.dx = dx_;
    this.dy= dy_;
    this.dr = dr_;
    this.max = max_;
    this.cambio = cambio_;
    this.sat = random(255);
  }
  
  void display(){
    rectMode(CENTER);
    pushMatrix();
    translate(this.x,this.y);
    stroke(255);
    strokeWeight(0.1);
    for(int i = this.max; i>0; i-= this.cambio){
      rotate(this.r);      
      noFill();
      rect(0,0,i,i);
      stroke(this.sat);
    }
    popMatrix();
  }
  
  void mover(){
    this.x += this.dx;
    this.y += this.dy;
    this.rotar();
    this.rebotar();
  }
  
  void rotar(){
    this.r+= this.dr;
  }
  
  void rebotar(){
    if(this.x<0 || this.x>width){
      this.dx *= -1;
    }
    if(this.y<0 || this.y>height){
      this.dy *= -1;
    }
  }
}

//variables globales

ArrayList <Particula> particulas;

void setup(){
  size(400,400);
  particulas = new ArrayList <Particula>(); 
  for(int i = 0; i<100; i++){
    particulas.add(new Particula(random(400),random(400),random(TWO_PI),random(-2,2),random(-2,2),random(0.05),int(random(50,150)),int(random(2,10))));
  }
  background(255);
}

void draw(){
  
  for(Particula p:particulas){
    p.mover();
    p.display();
  } 
}
