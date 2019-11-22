ArrayList <PImage> imagenes;

void setup(){
  size(400,400);
  imagenes = new ArrayList <PImage>();
  imagenes.add(loadImage("foo.jpg"));
  imagenes.add(loadImage("foo.jpg"));
  imagenes.add(loadImage("foo.jpg"));
}


int contador;
void draw(){
  contador++;
  if (contador <50){
    image(imagenes.get(0),0,0);
  }
  else if(contador <100){
    image(imagenes.get(1),0,0);
  }
  else if (contador <150){
    image(imagenes.get(2),0,0);
  }
  else if (contador >200){
    contador = 0;
  }
}
