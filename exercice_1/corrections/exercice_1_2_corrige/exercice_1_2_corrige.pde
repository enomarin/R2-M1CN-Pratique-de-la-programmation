PVector pos;
float deplacement = 5;
void setup() {
  size(400, 400);
  pos = new PVector(random(width), random(height));
  background(10);
}

void draw() {
  //background(10, 10);
  noStroke();
  fill(255,10);
  circle(pos.x, pos.y, 10);
  
  int direction = floor(random(4));
  println(direction);
  
  if (direction == 0) {
    pos.y += deplacement;
  }
  if (direction == 1) {
    pos.x += deplacement;
  }
  if (direction == 2) {
    pos.y -= deplacement;
  }
  if (direction == 3) {
    pos.x -= deplacement;
  }
}
