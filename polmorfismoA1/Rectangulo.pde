
class Cuadrado implements Enemigo{
  float x,y;
  float t;
  float dx;
  float dy;
  int vida;

  Cuadrado(float x_, float y_, float t_){
    this.x = x_;
    this.y = y_;
    this.t = t_;
    this.dx = random(-2,2);
    this.dy = random(-2,2);
    this.vida = 1;
  }
  
  void display(){
    noStroke();
    fill(255,0,0);
    rectMode(CENTER);
    rect(this.x,this.y,this.t,this.t);
  }
  
  void mover(){
    this.x += this.dx;
    this.y += this.dy;
    
    if(this.x<0){
      this.x = width;
    }
    if(this.x>width){
      this.x = 0;
    }
    if(this.y<0){
      this.y = height;
    }
    if(this.y>height){
      this.y = 0;
    }
    
  }
  void resuelveAtaque(){
    this.vida = 0;
  }
}
