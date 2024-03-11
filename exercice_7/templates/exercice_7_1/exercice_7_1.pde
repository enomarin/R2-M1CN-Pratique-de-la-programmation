PVector pos;
float deplacement = 5;

void setup() {
  size(400, 400);
  pos = new PVector(width/2, height/2);
  background(10);
  noStroke();
  fill(255, 10);
}

void draw() {

  int direction = floor(random(4));
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
  circle(pos.x, pos.y, 10);
}

PVector updatePosition(PVector position) {
  return position;
}

void display(PVector position) {
}
