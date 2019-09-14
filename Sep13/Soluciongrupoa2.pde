Juego elJuego;

void setup(){
  size(600,600);
  elJuego = new Juego();
}

void draw(){
  background(255);
  elJuego.display();
}

void mousePressed(){
  elJuego.funcion();
}
