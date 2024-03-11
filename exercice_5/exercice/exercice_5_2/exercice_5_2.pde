Table table;

void setup() {
  size(800, 800);
  background(255);
  
  /*
  1° Utiliser la fonction loadTable() pour charger le fichier .csv
   "transmusicale_artistes_pays.csv" qui se trouve dans le dossier /data
   */
  //table = loadTable("...", "header");

  for (TableRow row : table.rows()) {
    /*
     2° Utiliser la fonction row.getString() pour obtenir le champ "pays"
     de chacune des lignes de l'objet table
     */
    //String country = ...;

    /* 3° Utiliser la fonction row.getInt() pour obtenir
     le champ "nombre" de chacune des lignes de l'objet table */
    //int number = ...;

    // 4° Utiliser la fonction map afin d'adapter la taille du cercle en fonction de la variable number
    //float diameter = ...;

    // 5° utiliser la fonction random() pour générer une position x et y aléatoire
    //float x = ...;
    //float y = ...;



    push();
    /*
    6° Pour chacune des lignes du tableau :
     - utiliser la fonction translate() pour déplacer les formes à la position x et y
     - dessiner un cercle de diamètre diameter
     - ecrire le nom du pays au dessus du cercle
     - Ecrire entre les fonctions push() et pop() afin de pouvoir déplacer les formes
     Utilisez les fonctions suivante :
     - translate()
     - circle()
     - text()
     - textAlign()
     - fill()
     */
    pop();
  }
}
