void setup() {
  size(400, 400);
  PImage img;
  img = loadImage("dog.png");

  // Affichage de l'image originale
  image(img, 0, 0, width/2, height/2);
  // Exemple en dessinant l'image en haut a gauche teinter en rouge
  tint(255, 0, 0);
  image(img, width/2, 0, width/2, height/2);

  // 1° Utilisez la fonction tint pour teinter l'image en bas à gauche en vert
  //tint(...);
  image(img, 0, height/2, width/2, height/2);
  
  // 2° Dessinez l'image en bas à droite teinte en bleue
  //tint(...);
  //image(...);
}
