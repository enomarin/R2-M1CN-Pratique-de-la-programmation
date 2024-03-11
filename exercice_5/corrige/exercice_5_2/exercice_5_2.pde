Table table;

void setup() {
  size(800, 800);
    table = loadTable("transmusicale.csv", "header");
  for (TableRow row : table.rows()) {
    String country = row.getString("pays");
    float number = row.getInt("nombre");
    float diameter = map(number, 1, 600, 10, 200);
    noFill();
    push();
    float x = random(100, width - 100);
    float y = random(100, height - 100);
    translate(x, y);
    textSize(12);
    textAlign(CENTER);
    rectMode(CENTER);
    text(country, 0, -15, 10);
    circle(0, 0, diameter);
    pop();
  }
}
