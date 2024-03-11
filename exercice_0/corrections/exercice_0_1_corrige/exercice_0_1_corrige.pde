void setup() {
  size(400, 400);
}

void draw() {
  background(255, 50, 50);
  // 1° Un rectangle en bas à droite
  stroke(0);
  fill(255);
  rect(width - 50, height - 50, 50, 70);

  noStroke();
  fill(0, 30, 59);
  rectMode(CENTER);
  rect(width/2, height/2, 70, 70);

  // 2° Un cercle coloré d’un diamètre de 50px exactement au centre
  stroke(255);
  fill(34, 30, 230);
  ellipse(width/2, height/2, 50, 50);
  // 3° Un carré derrière le cercle
}
