void setup() {
  size(400, 400);
  background(0);
  rectMode(CENTER);
  for (int y = 50; y < height; y = y + 50) {
    for (int x = 50; x < width; x = x + 50) {
      rect(x, y, 10, 10);
    }
  }
}
