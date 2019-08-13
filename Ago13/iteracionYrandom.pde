size(400,400);
background(255);
noFill();

//¿De que otra forma se puede registrar este procedimiento?

//init; test; update
for(int i = 0; i<100; i++){
  stroke(random(255),random(255),random(255));
  strokeWeight(random(5));
  bezier(0, 200, random(400), random(400), random(400), random(400), 399, 200);
}
