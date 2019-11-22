// si turno es 0, es turno del jugador azul, si turno es 1, es turno del jugador rojo
int turno = 0 ;
int puntosAzul = 0;
int puntosRojo = 0;

void setup(){
  size(400,400);
}

void draw(){
  background(255);
  fill(255,0,0);
  ellipse(100,200,puntosRojo,puntosRojo);
  fill(0,0,255);
  ellipse(300,200,puntosAzul,puntosAzul);
  
  if(turno == 0){
    if (mousePressed){
      puntosAzul++;
    }
  }
  else {
    if (mousePressed){
      puntosRojo++;
    }
  }
}

void mouseReleased(){
  turno++;
  if (turno>1){
    turno = 0;
  }
}
