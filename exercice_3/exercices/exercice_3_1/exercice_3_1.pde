import processing.sound.*;

// On déclare une variable sound qui contiendra notre son
SoundFile sound;
// On déclare une variable waveform qui servira à analyser le son
Waveform waveform;

// On définit le nombre de points de la forme d'onde
int samples = 100;

void setup()
{
  size(640, 360);
  background(255);
  
  // On charge le son dans l'objet sample
  sound = new SoundFile(this, "sound.wav");
  sound.loop();
  
  // On initialise l'objet waveform avec notre son en entrée
  waveform = new Waveform(this, samples);
  waveform.input(sound);
}

void draw()
{
  background(0);
  stroke(255);
  strokeWeight(2);
  noFill();

  // On utilise la fonction analyse() de l'objet waveform afin d'analyser la forme d'onde du son
  waveform.analyze();
  // 1° Grâce à println(), afficher le contenu de waveform.data, de quel type de variable s'agit-il ?
  //println(...);
  
  for (int i = 0; i < samples; i++)
  {
    // 2°  En utilisant la fonction map(), utiliser l'index i du tableau (entre 0 et samples) pour la position x du cercle (entre 0 et width)
    //float x = map(...);
    
    // 3° En utilisant la fonction map(), utiliser la valeur à l'index i du tableau (entre -1 et 1) pour la position y du cercle (entre 0 et height)
    //float y = map(...);
    
    // 4° Dessiner le cercle à la position x, y
    fill(255);
    noStroke();
    //circle(...);
  }
}
