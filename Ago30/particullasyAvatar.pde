class Avatar{
  float x,y;
  float v;
  float a;
  
  Avatar(){
    this.x = 200;
    this.y = 200;
    this.v = 2;
    this.a = 0;
  }
  
  void rotar(){
    this.a+=0.1;
  }
  
  void mover(){
    this.x = this.x + cos(this.a)*this.v;
    this.y = this.y + sin(this.a)*this.v;
    this.x = constrain(this.x,0,400);
    this.y = constrain(this.y,0,400);
  } 
  
  void display(){
    pushMatrix();
    translate(this.x,this.y);
    rotate(this.a);
    noStroke();
    fill(255,0,0);
    ellipse(0,0,15,15);
    stroke(0);
    line(0,0,30,0);
    popMatrix();
  }
  
  void colision(){
    for(Particula p: particulas){
      float distancia = dist(this.x,this.y,p.x,p.y);
      if(distancia<p.r){
        println("colision!!!");
      }
    }
  }
}


class Particula{
  float x,y;
  float dx,dy;
  float r;
  color c;
  float[] osc = new float [3];
  float [] dosc = new float [3];
  
  Particula(int x_, int y_, float r_, color c_){
    this.x = x_;
    this.y = y_;
    this.dx = random(-1,1);
    this.dy = random(-1,1);
    this.r = r_;
    this.c = c_;
    for(int i = 0 ; i<3 ; i++){
      osc[i] = random(TWO_PI);
      dosc[i]= random(-0.1,0.1);
    }
  }
  
  void display(){
    noStroke();
    for(int i = 0 ; i<3 ; i++){
      osc[i] += dosc[i];
    }
    fill(map(sin(osc[0]),-1,1,0,255),map(sin(osc[1]),-1,1,0,255),map(sin(osc[2]),-1,1,0,255));
    ellipse(this.x,this.y,this.r*2*sin(osc[0]),this.r*2*sin(osc[0]));
    
  }
  
  void mover(){
    this.x+=this.dx;
    this.y+=this.dy;
    if(this.x<0+this.r || this.x>width-this.r){
      this.dx *=-1;
    }
    if(this.y<0+this.r || this.y>height-this.r){
      this.dy *=-1;
    }
  }
}

ArrayList <Particula> particulas;
float t;
color col;
Avatar elAvatar;

void setup(){
  size(400,400);
  particulas = new ArrayList <Particula>();
  elAvatar = new Avatar();
}

void draw(){
  background(255);
  for(Particula p: particulas){
    p.display();
    p.mover();
  }
  
  if(mousePressed){
    t++;
    noStroke();
    fill(col);
    ellipse(mouseX,mouseY,t,t);
  }
  
  elAvatar.display();
  elAvatar.colision();
  if(keyPressed){
    if(key == 'a'){
      elAvatar.rotar();
    }
    if(key == 's'){
      elAvatar.mover();
    }

  }
}

void mousePressed(){
  col = color(random(255),random(255),random(255));
  t = 1;
}

void mouseReleased(){
  particulas.add(new Particula(mouseX,mouseY,t/2,col));
}
