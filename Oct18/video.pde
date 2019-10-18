import processing.video.*;

Movie movie;

void setup() {
  size(640, 360);
  background(0);
  movie = new Movie(this, "transit.mov");
  movie.loop();
  println(movie.duration());
}



void draw() {
  image(movie, 0, 0, width, height);
  for(int i = 0; i<movie.width; i+=10){
    for(int j = 0; j<movie.height; j+= 10){
      color c = movie.get(i,j);
      stroke(c);
      strokeWeight(random(10));
      line(i,j,i+random(-40,40),j+random(-40,40));
    }
  }
  movie.speed(map(mouseX,0,width,0,5));
  movie.jump(random(12));
}

void movieEvent(Movie m) {
  m.read();
}
