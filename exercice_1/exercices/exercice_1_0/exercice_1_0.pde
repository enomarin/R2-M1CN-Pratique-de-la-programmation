void setup() {
  size(400, 400);
  // 3° Déplacer la fonction background(...) à l’intérieur de la fonction setup() {...}
}

void draw() {
  background(220);
  // 1° Créer un cercle à l’intérieur du canvas
  // 2° remplacer la position x, y écrite “en dur” par la position de la souris
  // ellipse(width / 2, height / 2, 50, 50)

  // 4° Utiliser la condition if() {...} en utilisant la variable globale mouseIsPressed pour dessiner le cercle uniquement quand on clique sur la souris
  //if(mousePressed) {...}
  
  println("position de la souris : x : " + mouseX + " y : " + mouseY);
}
