// 1° Initialiser une variable counter à 1
// int counter = ...;
float offsetX;
void setup() {
  size(400, 400);
  textAlign(CENTER);
  PFont font;
  font = createFont("handwritting.ttf", 12);
  textFont(font);
}

void draw() {
  background(255);

  for (int y = 10; y <= height; y += 25) {
    for (int x = 10; x <= width; x += 25) {
      // 6° Grace aux fonctions dist() et map() faite changer la taille du texte au survol de la souris
      /*
       float distance = dist(mouseX, mouseY, x, y);
       float size = map(distance, 0, width, 20, 10);
       fill(0);
       textSize(size);
       */

      // 2° Avec la fonction text() dessiner la valeur de counter à la position x et y
      // text(...)

      // 3° Pour chaque position x et y, incrémenter la valeur de counter de 1
      // counter = ...;
      // 5° Utiliser offset width pour ajouter un décalage horizontal qui s'adapte à la largeur de counter
      //offsetX = ...
    }
  }

  // 4° A chaque itération de la boucle draw(), remettre le compteur à 1
  // counter = ...;
}
