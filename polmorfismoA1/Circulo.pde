class Circulo implements Enemigo{
  float x,y,t;
  int vida;
  
  Circulo(float x_, float y_, float t_){
    this.x = x_;
    this.y = y_;
    this.t = t_;
    this.vida = 3;
  }
  void display(){
    noStroke();
    fill(0,0,255);
    ellipse(this.x,this.y,this.t,this.t);
  }
  void mover(){
    this.x += random(-2,2);
    this.y += random(-2,2);
  }
  void resuelveAtaque(){
    this.vida -= 1; 
  }
}
