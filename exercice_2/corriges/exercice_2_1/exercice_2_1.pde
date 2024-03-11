void setup() {
  size(400, 400);
}

void draw() {
  background(220);
  // 1° Dans la boucle draw() : tracer une ligne horizontale sur la 1ère rangée du canvas

  // 3° Déclarer deux couleurs de votre choix

  color c1 = color(168, 98, 22);
  color c2 = color(56, 195, 245);

  // 2° Utiliser une boucle for afin de parcourir l'ensemble des pixels horizontaux du canvas
  for (int y = 0; y < height; y++) {
    // 4° Créer une variable amt qui varie de 0 à 1 suivant y
    float amt = map(y, 0, height, 0, 1);
    // 5° Créer une troisième couleur dérivée de c1 et c2
    color c = lerpColor(c1, c2, amt);
    // 6° Utiliser la fonction stroke pour assigner la couleur c à notre ligne
    stroke(c);
    line(0, y, width, y);
  }
}
