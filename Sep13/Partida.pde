class Partida{
  ArrayList <Carta> cartas;
  ArrayList <Jugador> jugadores;
  int turno; 
  int cartasVolteadas;
  char[] valoresCartasVolteadas = {'v','b'};
  Carta[] lasCartasVolteadas = new Carta[2];
  boolean todasEncontradas;
  
  Partida(){
    this.cartas = new ArrayList<Carta>();
    this.jugadores = new ArrayList<Jugador>();
    this.turno = 0;
    this.cartasVolteadas = 0;
    this.todasEncontradas = false;
    IntList orden = new IntList();
    
    for(int i = 0; i<28; i++){
      orden.append(i);
    }
    orden.shuffle();
    char[] losChars={'a','b','c','d','e','f','g','h','i','j','k','l','m','n'}; 
    for(int i = 0; i<28; i++){
      this.cartas.add(new Carta(orden.get(i),losChars[i%14]));
    }
    jugadores.add(new Jugador());
    jugadores.add(new Jugador()); 
  }
  
  void display(){
    for(Carta c:cartas){
      c.display();
    }
    fill(0);
    text("turno de Jugador " + (turno+1) ,0,420);
    text("puntos J1 " + jugadores.get(0).puntos,0,440);
    text("puntos J2 " + jugadores.get(1).puntos,0,460);
  }
  
  void rotarCartas(){
    for(Carta c:cartas){
      if(!c.laCartaEstaBocaArriba && !c.laCartaYaFueEncontrada && c.estoySobreLaCarta){
        c.rotarCarta();
        this.valoresCartasVolteadas[this.cartasVolteadas] = c.cualCartaEs;
        this.lasCartasVolteadas[this.cartasVolteadas] = c;
        this.cartasVolteadas++;
      }
    }
  }
  
  void evaluar(){
   if(jugadores.get(0).puntos + jugadores.get(1).puntos >13){
     todasEncontradas = true;
   }
    if(this.valoresCartasVolteadas[0] == this.valoresCartasVolteadas[1]){
      jugadores.get(this.turno).adivino();
      this.cartasVolteadas = 0;
      this.valoresCartasVolteadas[0] = '1';
      this.valoresCartasVolteadas[1] = '2';
      this.lasCartasVolteadas[0].laCartaYaFueEncontrada = true;
      this.lasCartasVolteadas[1].laCartaYaFueEncontrada = true;
    }
    else{
      this.turno++;
      if(this.turno>1){
        this.turno = 0;
      }
      this.cartasVolteadas = 0;
      this.valoresCartasVolteadas[0] = '1';
      this.valoresCartasVolteadas[1] = '2';
      this.lasCartasVolteadas[0].rotarCarta();
      this.lasCartasVolteadas[1].rotarCarta();
    }
  }
}
