PShape img;
int contador = 0;
void setup() {
  size(640, 360);
  img = loadShape("bot1.svg");
  println(img.getChildCount());

  
} 

void draw(){
  contador++;
  //background(102);
  //img.disableStyle();
  noFill();
  stroke(255,255,0);
  for(int i = 0; i<img.getChildCount(); i++){
    if(img.getChild(i).getChildCount() == 0){
      println(i);
    }
    img.getChild(39).setFill(color(random(255)));
  }
  if(contador % 25 ==0){
  shape(img,mouseX,mouseY,50,50);
  }


}
