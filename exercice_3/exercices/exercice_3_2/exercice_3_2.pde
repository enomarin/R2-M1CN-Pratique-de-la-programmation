import processing.sound.*;

AudioIn in;
Waveform waveform;

int samples = 1024;

public void setup()
{
  size(500, 500);
  background(255);

  // Initialise le flux audio du micro
  in = new AudioIn(this, 0);
  //in.play();

  waveform = new Waveform(this, samples);
  waveform.input(in);
}

public void draw()
{
  background(255);
  noStroke();
  translate(width / 2, height / 2);

  // 1° A la manière de l'exerice précédent, utiliser la fonction analyze() de l'objet waveform pour extraire la forme d'onde du son

  for (int i = 0; i < samples; i++) {

    /**
    2° Dans la boucle for : déclarer une variable distance.
    Grace à la fonction map, transformer la valeur du tableau waveform.data à l'index i (entre -1 et 1)
    en une distance (entre 0px et 200px)
    */
    //float distance = map(...);

    /**
    3° Définir l'angle ou dessiner notre cercle :
    Grace à la fonction map, déclarer une variable angle qui calcule un angle différent
    pour chacune des valeurs du tableau waveform.data
    */
    //float angle = map(...);

    // 4° Calculer la position x et y du cercle à partir de l'angle et de la distance calculé précédemment
    //float x = cos(...) * ...;
    //float y = sin(...) * ...;

    // 5° Dessiner le cercle à partir des positions x et y
    fill(0);
    //circle(...);
  }
}
