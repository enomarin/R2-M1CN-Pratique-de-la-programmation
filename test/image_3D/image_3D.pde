PImage img;       // The source image
int size = 5; // Dimensions of each cell in the grid

void setup() {
  size(500, 500, P3D);
  img = loadImage("dog.jpg"); // Load the image
}

void draw() {
  background(255);
  img.loadPixels();

  // Begin loop for columns
  for (int y = 0; y < img.height; y += size  ) {
    // Begin loop for rows
    for (int x = 0; x < img.width; x += size ) {
      color col = img.get(x,y);       // Grab the color
      
      float bright = brightness(col);
      // Map brightness to a z position as a function of mouseX
      float z = map(mouseX, 0, width, 0, bright);
      // Translate to the location, set fill and stroke, and draw the rect
      pushMatrix();
      translate(x, y, z); 
      fill(col);
      noStroke();
      rectMode(CENTER);
      rect(0, 0, size, size);
      popMatrix();
    }
  }
}
