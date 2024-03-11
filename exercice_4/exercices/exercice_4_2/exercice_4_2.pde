/*
Dans ce troisième exercice, nous allons utiliser les images d'une vidéo comme source pour notre sketch.
 Nous allons cette fois-ci dessiner des cercles dont le diamètre va varier en fonctione de la luminosité de l'image (en niveau de gris).
 */
import processing.video.*;

Movie movie;
void setup() {
  size(640, 360);
  // On importe la vidéo dog.mp4
  movie = new Movie(this, "dog.mp4");
  movie.volume(0);
  movie.loop();
}
void draw() {
  // Si une nouvelle frame de la vidéo est disponible, on la charge
 if (movie.available()) {
    movie.read();
  }
  
    background(255);

  // 1° Avec la fonction image afficher la vidéo "movie"
  //image(...);

  for (int y = 0; y < height; y += 10) {
    for (int x = 0; x < width; x += 10) {
      // 2° A l'aide de la fonction movie.get(x,y), stocker la couleur du pixel à la position x,y dans la variable "col"
      //color col = ...;

      // 3° En utilisant la fonction brightness, obtenez la luminosité associée à la couleur "bright". La stocker dans la variabla "bright"
      //float bright = brightness(...);

      // 4° Utiliser la fonction map() pour transformer la valeur de bright (de 0 à 100) en un diamètre (de 0px à 5px par exemple)
      //float diam = map(...);

      // 5° Dessiner les cercles à la position x, y avec le diamètre donnée par la variable "diam"
    }
  }
}
