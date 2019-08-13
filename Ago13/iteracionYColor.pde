size(400,400);
background(255);

//¿De que otra forma se puede registrar este procedimiento?

//init; test; update
for(int i = 0; i<400; i+=10){
  for(int j = 0; j<400; j+=10){
    stroke(0);
    
    //degradado horizontal
    //fill(i);
    
    //degradado vertical
    //fill(j);
    
    //ajedrez
    if((i+j)/10%2 == 0){
      fill(0);
    }
    else{
      fill(255);
    }
    
    //random
    //fill(random(255));
    
    //Perlin noise
    //fill(noise(i*0.01,j*0.01)*255);
    rect(i,j,10,10);
  }
}
