void setup() {
  size(400, 400);
  background(0);
  rectMode(CENTER);
    for (int x=50; x < width; x = x + 50) {
      rect(x, 50, 10, 10);
    }
}
