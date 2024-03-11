import processing.video.*;
// On déclare les variables x et y qui seront les positions des points aléatoires d'où on prendra la couleur des pixels de la vidéo
float x;
float y;

Movie movie;

void setup() {
  size(640, 360);
  background(255);
  x = width/2;
  y = height/2;
  movie = new Movie(this, "dog.mp4");
  movie.loop();
  noStroke();
}

void movieEvent(Movie movie) {
  movie.read();
}
void draw() {
  for (int i = 0; i < 500; i++) {
    int x = int(random(movie.width));
    //1° En suivant l'exemple précédent, calculer une coordonnée y aléatoire inférieure à la hauteur de la vidéo
    int y = int(random(movie.height));

    // 2° à l'aide de la fonction movie.get(), obtenez la couleur du pixel à la coordonnée x,y de la vidéo
    color col = movie.get(x, y);

    // 3° Utilisez les fonction fill() et ellipse pour dessiner un cercle d'un diamètre de 5px de la couleur "col"
    fill(col, 128);
    ellipse(x, y, 5, 5);

    // 4° BONUS : Utilisez une boucle for pour génerer plusieurs points d'un coup
  }
}
