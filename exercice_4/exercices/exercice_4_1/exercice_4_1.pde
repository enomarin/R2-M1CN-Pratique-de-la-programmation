/*
Dans cette intiation, nous allons importer une image depuis le dossier du sketch. Cette image se nomme "dog.jpg".
 Pour commencer, nous allons afficher cette image dans le canvas, puis la redimensionner à la taille du canvas.
 Ensuite, nous allons dessiner un cercle qui prendra la couleur du pixel en dessous.
 */

PImage img;
void setup() {
  size(400, 400);
  // 1° Charger l'image "dog.png" grâce à la fonction loadImage()
  //img = loadImage(...);
  // 2° Afficher l'image aux dimensions du canvas
  //image(img, 0, 0, width, height);
  img.resize(width, height);
  img.loadPixels();
  for (int y = 0; y < img.width; y += 10) {
    for (int x = 0; x < img.width; x += 10) {
      // 3° Utiliser la fonction img.get() afin d'obtenir la couleur du pixel à la position x et y
      //color col = img.get(...);
      // 4° Utiliser les fonctions fill(), noStroke() et circle pour dessiner un cercle de la couleur "color" à la position x, y du pixel.
    }
  }
}
