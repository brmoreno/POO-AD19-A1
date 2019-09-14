class Carta{
  int x;
  int y;
  int w;
  int h;
  char cualCartaEs;
  boolean laCartaEstaBocaArriba;
  boolean laCartaYaFueEncontrada;
  boolean estoySobreLaCarta;
  int posicion;
  
  Carta(int posicion_,  char cualCartaEs_){
    this.posicion = posicion_;
    this.cualCartaEs = cualCartaEs_;
    this.w = 50;
    this.h = 100;
    this.laCartaEstaBocaArriba = false;
    this.laCartaYaFueEncontrada = false;
    this.estoySobreLaCarta = false;
    this.x = posicion_ % 7*this.w;
    this.y = floor(posicion/7)*h;
  }
  
  void display(){
    this.estoySobreLaCarta = this.sobreLaCarta();
    if(laCartaEstaBocaArriba){
      pushMatrix();
      translate(this.x,this.y);
      fill(255);
      stroke(0);
      rect(0,0,this.w,this.h);
      fill(255,0,0);
      text(cualCartaEs,25,50);
      popMatrix();
    }
    else{
      pushMatrix();
      translate(this.x,this.y);
      fill(0);
      stroke(255);
      rect(0,0,this.w,this.h);
      popMatrix();   
    }
  }
  
  boolean sobreLaCarta(){
    boolean resultado = false;
    if(mouseX>this.x&& mouseX<this.x+this.w && mouseY>this.y && mouseY <this.y+this.h){
      resultado = true;
    }
    return (resultado);
  }
  
  void rotarCarta(){
    laCartaEstaBocaArriba = !laCartaEstaBocaArriba;
  }
}
