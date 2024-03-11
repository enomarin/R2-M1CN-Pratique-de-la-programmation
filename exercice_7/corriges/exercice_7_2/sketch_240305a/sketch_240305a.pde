ArrayList<Walker> walkers = new ArrayList<Walker>();

float deplacement = 5;
void setup() {
  size(400, 400);
  background(10);
}

void draw() {
  noStroke();
  fill(255, 10);
  for (PVector walker : walker) {
    walker.updatePosition();
    display(position);
  }
}

void mouseClicked() {
  PVector position = new PVector(mouseX, mouseY);
  positions.add(position);
}


class Walker {
  PVector position;
  Walker(float x, float y) {
    position = new PVector(x, y);
  }

  void updatePosition() {
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
  }

  void display(PVector position) {
    circle(position.x, position.y, 10);
  }
}
