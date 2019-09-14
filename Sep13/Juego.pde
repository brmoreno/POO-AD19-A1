class Juego{
  int estado;
  Partida laPartida;
  
  Juego(){
    this.estado = 0;
  }
  
  void display(){
    fill(0);
    switch(estado){
      case 0:
        text("pantalla de inicio",200,100);
      break;
      case 1:
        text("pantalla de instrucciones",200,100);
      break;
      case 2:
        laPartida.display();
      break;
      case 3:
        String resultado = "";
        if (laPartida.jugadores.get(0).puntos >laPartida.jugadores.get(1).puntos ){
          resultado = "gano jugador 1";
        }
        else if (laPartida.jugadores.get(0).puntos < laPartida.jugadores.get(1).puntos ){
          resultado = "gano jugador 2";
        }
        else{
          resultado = "empate";
        }
        text(resultado,200,100);
      break;  
    }
  }
  
  void funcion(){
    switch(this.estado){
      case 0:
        this.estado++;
      break;
      case 1:
        laPartida = new Partida();
        this.estado++;
      break;
      case 2:
        if(laPartida.cartasVolteadas<2){
          laPartida.rotarCartas();
        }
        else{
          laPartida.evaluar();
        }
        if (laPartida.todasEncontradas){
          this.estado++;
        }
      break;
      case 3:
        this.estado = 0;
      break;      
    }
  }
}
