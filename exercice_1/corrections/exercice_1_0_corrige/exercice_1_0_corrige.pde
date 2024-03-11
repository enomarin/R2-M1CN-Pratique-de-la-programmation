void setup() {
  size(400, 400);
  // 3° Déplacer la fonction background(...) à l’intérieur de la fonction setup() {...}
  background(220);
}

void draw() {
  // 1° Créer un cercle à l’intérieur du canvas
  // 2° remplacer la position x, y écrite “en dur” par la position de la souris
  //ellipse(mouseX, mouseY, 50, 50);
  // 4° Utiliser la condition if() {...} en utilisant la variable globale mouseIsPressed pour dessiner le cercle uniquement quand on clique sur la souris
  noStroke();
  if (mousePressed) {
    ellipse(mouseX, mouseY, 20, 20);
  }
}
