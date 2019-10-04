class Boton1{
  int x;
  int y;
  float r;
  boolean isOver;
  boolean isPressed;
  
  Boton1(int x_, int y_, float r_){
    this.x = x_;
    this.y = y_;
    this.r = r_;
    this.isOver = false;
    this.isPressed = false;
  }
  
  void display(){
    this.funcionamiento();
    ellipse(this.x,this.y,this.r,this.r);
    //println("isPressed = " + isPressed + "  isOver = " +isOver);
  }
  
  void funcionamiento(){
    float distancia = dist(this.x,this.y,mouseX,mouseY);
    if(distancia<this.r/2){
      isOver = true;
      if(mousePressed){
        isPressed = true;
      }
      else{
        isPressed = false;
      }
    }
    else{
      isOver = false;
      isPressed = false;
    }
  }  
}


class Boton2 extends Boton1{
  Boton2(int x_, int y_, float r_){
    super(x_,y_,r_);
  }
  
  void crecer(){
    if(this.isPressed){
      r+=0.5;
    }
  }
  
  void display(){
    this.crecer();
    super.display();
  }
}

class Boton3 extends Boton1{
  Boton3(int x_, int y_, float r_){
    super(x_,y_,r_);
  }
  void display(){
    if(isOver){
      fill(255,0,0);
    }
    if(isPressed){
      fill(0,255,0);
    }
     if (!isOver && !isPressed){
       fill(0,0,255);
    }
    super.display();
  }
}

class Boton4 extends Boton1{
  color c;
  Boton4(int x_, int y_, float r_){
    super(x_,y_,r_);
    this.c = color(random(255),random(255),random(255));
  }
  
  void display(){
    if(isPressed){
     this.c = color(random(255),random(255),random(255));
    }
    fill(this.c);
    super.display();
  }
}

Boton1 uno;
Boton2 dos;
Boton3 tres;
Boton4 cuatro;

void setup(){
  size(400,400);
  uno = new Boton1(200,200,50);
  dos = new Boton2(100,100,50);
  tres = new Boton3(300,300,50);
  cuatro = new Boton4(100,300,50);
}

void draw(){
  background(255);
  fill(255);
  uno.display();
  dos.display();
  tres.display();
  cuatro.display();
}
