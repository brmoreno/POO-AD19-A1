float delta;
float dx;
void setup(){
  size(400,400);
}

void draw(){
  dx+=0.05;
  delta+= 0.01;
for(int i = 0; i<400; i+=5){
  for(int j = 0; j<400; j+=5){
    noStroke();
    fill(noise(i*0.01+dx,j*0.01,delta)*255);
    rect(i,j,5,5);
  }
}
}
