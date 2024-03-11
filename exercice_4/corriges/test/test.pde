import processing.video.*;
// On déclare les variables x et y qui seront les positions des points aléatoires d'où on prendra la couleur des pixels de la vidéo
float x;
float y;
PImage image_old;
Movie movie;

void setup() {
  size(640, 360);
  background(255);
  x = width/2;
  y = height/2;
  movie = new Movie(this, "dog.mp4");
  movie.loop();
  noStroke();
  image_old = movie;
}

void movieEvent(Movie movie) {
  movie.read();
}
void draw() {
  background(255);

  image(movie, 0, 0);
  tint(255, 100);
  image(image_old, 0, 0);
  tint(255, 100);
  
  image_old = get();
}
