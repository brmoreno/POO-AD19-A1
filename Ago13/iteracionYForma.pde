size(400,400);
background(255);
noFill();


//init; test; update
for(int i = 0; i<400; i+=20){
  fill(i);
  rect(i,50,20,20);
}

for(int i = 0; i<400; i+=20){
  fill(i);
  rect(i,200,20,i*0.1);
}

for(int i = 0; i<400; i++){
  fill(0);
  noStroke();
  rect(i,300+sin(i*0.1)*50,1,3);
}
