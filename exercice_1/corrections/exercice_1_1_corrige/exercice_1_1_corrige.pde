// 2° Déclarer une variable xPos en haut du sketch
float xPos = 0;

// 7° Ajouter une variable direction
float xDir = 1;
int rayon = 20;
void setup() {
  size(400, 400);
  // 3° Assigner à la variable xPos la moitié de la largeur du canvas
  xPos = width/2;
}

void draw() {
  background(220);
  // 1° Dessiner un cercle d’un diamètre de 30px au centre du canvas
  noStroke();
  ellipse(xPos, height/2, 2*rayon, 2*rayon);

  // 5° Incrémenter xPos à chaque itération de la fonction draw()
  xPos = xPos + xDir;
  // xPos += xDir; // Equivalent plus concis
  // 6° Utiliser la déclaration if() {...} afin de détecter quand le cercle atteint le côté droit du canvas
  if (xPos >= width - rayon) {
    xDir = - xDir;
  }
  if (xPos <= 0 + rayon) {
    xDir = - xDir;
  }
  debugger();
}

void debugger() {
  stroke(255, 0, 0);
  line(xPos, 0, xPos, height);
  stroke(0, 255, 0);
  line(width - rayon, 0, width - rayon, height);
  line(rayon, 0, rayon, height);
}
