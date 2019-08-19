//variables globales
float x;
float y;
float dx;
float dy;
float r;
float dr;


float xv;
float yv;
float rv;

float xt;
float yt;
float rt;


// establece las condiciones de inicio del programa
void setup(){
  size(400,400);
  background(255);
  x=0;
  y = 200;
  dx = 1;
  dy = 0.5;
  r = 0;
  dr=0.001;
  xv = 0;
  yv = 0;
  rv = 0;
  
  xt = 0;
  yt = 0;
  rt = 0;
}

// se repetir mientras el programa esté activo 
void draw(){
  background(255);
  x+=dx;
  y+=dy;
  r+=dr;
  noStroke();
  fill(255,0,0);
  particula2(x,y,r,100,5);
  particula2(xt,yt,rt, 80, 10);
  particula2(xv,yv,rv,150,20);
  //particula2();
  xv = mouseX;
  yv = mouseY;
 
  
  
  //input del boton del mouse en forma continua
  //mientras presione el boton del mouse, la particula rota;
  
  if( mousePressed == true){
    //rv+=0.01;
  }
  
  //input del teclado en forma continua
  if( keyPressed == true){
    if(key == 'd'){
      xt++;
    }
    if(key == 'a'){
      xt--;
    }
    if(key == 's'){
      yt++;
    }
    if(key == 'w'){
      yt--;
    }
  }
  

  if(x>width){
    dx =-1;
  }
  if(x<0){
    dx *= -1; 
  }
  
  if(y>height){
    dy *=-1;
  }
  if(y<0){
    dy *= -1; 
  }
}

//esto se llama cuando presiono el mouse, unicamente una vez;
void mousePressed(){
  rv+=0.01;
}

//esto se llama al presionar una tecla, unicamente una vez;
void keyPressed(){
  if(key == 'd'){
      xt++;
    }
    if(key == 'a'){
      xt--;
    }
    if(key == 's'){
      yt++;
    }
    if(key == 'w'){
      yt--;
    }  
  
}

void particula2(float x_, float y_, float r_, int max_, int cambio_){
  pushMatrix();
  translate(x_,y_);
  for(int i = max_; i>0; i-= cambio_){
    rotate(r_);
    rectMode(CENTER);
    strokeWeight(0.3);
    stroke(255);
    fill(i,0,0);
    rect(0,0,i,i);
  }
  popMatrix();
}
