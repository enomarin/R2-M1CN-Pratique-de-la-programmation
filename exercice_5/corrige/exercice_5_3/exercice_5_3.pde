Table table;

void setup() {
  size(600, 600);
  background(0);
  stroke(255);

  /* 1° Utiliser la fonction loadTable() pour charger le fichier .csv
   "transmusicale_artistes_pays.csv" qui se trouve dans le dossier /data
   */
  table = loadTable("transmusicale.csv", "header");

  /* 2° Utiliser la fonction table.getRowCount()
   pour stocker le nombre de ligne du tableau dans la variable rowCount
   */
  int rowCount = table.getRowCount();

  translate(width / 2, height / 2);

  for (int i = 0; i < rowCount; i++) {
    // 3° Utiliser la fonction table.getRow() pour socker la ligne du tableau dans une variable row
    TableRow row = table.getRow(i);
    /* 4° Utiliser la fonction row.getString() pour obtenir le champ "pays"
     de chacune des lignes de l'objet table
     */
    String country = row.getString("pays");
    /* 5° Utiliser la fonction row.getInt() pour obtenir
     le champ "nombre" de chacune des lignes de l'objet table */
    int number = row.getInt("nombre");
    // 6° Utiliser la fonction map() afin d'adapter la taille du trait de 1 à 1500 vers 1px à 200px
    float size = map(number, 1, 1500, 1, 200);

    // 7° Utiliser la fonction map() afin d'obtenir l'angle à partir du nombre de ligne (de 0 à rowCount vers 0 à TWO_PI)
    float angle = map(i, 0, rowCount, 0, TWO_PI);

    push();
    rotate(angle);
    translate(200, 0);

    // 8° Utiliser la fonction text() afin d'écrire le nom du pays et avec line() la ligne représentant le nombre de groupes venant de ce pays.
    text(country, 10, 0);
    line(0, -3, -size, -3);
    pop();
  }
}
