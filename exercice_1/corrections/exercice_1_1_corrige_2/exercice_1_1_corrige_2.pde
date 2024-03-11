// 2° Déclarer une variable xPos en haut du sketch
float xPos = 0;
float yPos = 0;
// 7° Ajouter une variable direction
float xDir;
float yDir;
int rayon = 20;
void setup() {
  size(400, 400);
  // 3° Assigner à la variable xPos la moitié de la largeur du canvas
  xPos = width / 2;
  yPos = height / 2;
  
xDir = random(-1,1);
yDir = random(-1,1);
}

void draw() {
  background(220);
  // 1° Dessiner un cercle d’un diamètre de 30px au centre du canvas
  noStroke();
  ellipse(xPos, yPos, 2*rayon, 2*rayon);

  // 5° Incrémenter xPos à chaque itération de la fonction draw()
  xPos = xPos + xDir;
  yPos = yPos + yDir;
  // xPos += xDir; // Equivalent plus concis
  // 6° Utiliser la déclaration if() {...} afin de détecter quand le cercle atteint le côté droit du canvas
  if (xPos >= width - rayon) {
    xDir = - xDir;
  }
  if (xPos <= 0 + rayon) {
    xDir = - xDir;
  }
  if (yPos >= height - rayon) {
    yDir = - yDir;
  }
  if (yPos <= 0 + rayon) {
    yDir = - yDir;
  }
  debugger();
}

void debugger() {
  stroke(255, 0, 0);
  line(xPos, 0, xPos, height);
  line(0, yPos, width, yPos);

  stroke(0, 255, 0);
  line(width - rayon, 0, width - rayon, height);
  line(rayon, 0, rayon, width);
  
    line(0, height - rayon,width , height - rayon);
  line(0, rayon, width, rayon);
}
