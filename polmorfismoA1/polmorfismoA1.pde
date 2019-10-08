ArrayList <Enemigo> enemigos;

void setup(){
  size(400,400);
  enemigos = new ArrayList <Enemigo>();
  for(int i = 0; i<15; i++){
    if(i<10){
      enemigos.add(new Cuadrado(width/2,height/2,30));
    }
    else{
      enemigos.add(new Circulo(width/2,height/2,30));
    }
  }
}

void draw(){
  //background(255);
  for(Enemigo e:enemigos){
    e.display();
    e.mover();
    e.resuelveAtaque();
  }
}
