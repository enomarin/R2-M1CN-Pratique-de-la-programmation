import processing.sound.*;
Amplitude amp;
AudioIn in;

void setup() {
  size(500, 500);
  background(255);
    
  amp = new Amplitude(this);
  in = new AudioIn(this, 0);
  in.start();
  amp.input(in);
}      

void draw() {
  background(0);
  // 1° utiliser la fonction amp.analyze() pour obtenir la valeur de l'amplitude du micro. Utiliser println() afin de connaitre la valeur maximum possible de l'amplitude.
  //println(...);
  // 2° Dans la boucle draw : déclarer une variable mic level (float micLevel) elle va "stocker" l'amplitude du son capter par le micro
  //float micLevel = ...
  
  /*
  3° Déclarer une variable radius (float diameter) qui servira à définir le rayon du cercle
  Utiliser la fonction map() afin d'adapter la valeur de la variable micLevel au rayon du cercle (0px à 100px).
  Stocker la valeur retourner par map dans la variable diameter
  */
  // float diameter = map(...);

  //4° Dessiner le cercle au centre du canvas avec le diametre donné par la variable diameter
  //ellipse(...);
}
