PVector pos;
PVector pos2;

float deplacement = 5;
void setup() {
  size(400, 400);
  pos = new PVector(width/2, height/2);
  pos2 = new PVector(width/2, height/2);
  background(10);
}

void draw() {
  noStroke();
  fill(255, 10);
  pos = calculatePosition(pos);
  pos2 = calculatePosition(pos2);
  display(pos);
  display(pos2);
}

PVector calculatePosition(PVector position) {
  int direction = floor(random(4));

  if (direction == 0) {
    position.y += deplacement;
  }
  if (direction == 1) {
    position.x += deplacement;
  }
  if (direction == 2) {
    position.y -= deplacement;
  }
  if (direction == 3) {
    position.x -= deplacement;
  }
  return position;
}

void display(PVector position) {
    circle(position.x, position.y, 10);
}
