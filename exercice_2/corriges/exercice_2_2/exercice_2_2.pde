int counter = 0;

void setup() {
  size(400, 400);
  textAlign(CENTER);
  PFont font;
  font = createFont("handwritting.ttf", 12);
  textFont(font);
}

void draw() {
  background(255);
  float offsetX = textWidth(str(counter)) + 3;
  fill(220);
  for (int y = 10; y <= height; y += 25) {
    for (int x = 10; x <= width; x += offsetX) {
      float distance = dist(mouseX, mouseY, x, y);
      float size = map(distance, 0, width, 20, 10);
      float opacity = map(distance, 0, width, 255, 0);
      fill(0, opacity);
      textSize(size);
      counter += 1;
      offsetX = textWidth(str(counter)) + 3;
      text(counter, x, y);
    }
  }
  counter = 0;
}
