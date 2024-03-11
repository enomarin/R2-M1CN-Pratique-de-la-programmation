Table table;

void setup() {
  /* 1° Utiliser la fonction loadTable pour charger le fichier .csv
   "transmusicale_artistes_pays.csv" qui se trouve dans le dossier /data
   */
  table = loadTable("transmusicale_artistes_pays.csv", "header");

  // 2° Utiliser la fonction println() pour afficher le nombre de ligne du fichier
  println(table.getRowCount() + " total rows in table");

  /* 3° Utiliser la fonction table.getRow(0) pour stocker
   la première ligne du tableau dans un objet TableRow */
  TableRow firstRow = table.getRow(0);
  // 4° Utiliser la fonction getColumnTitle(0) pour afficher le titre de la première colonne
  String firstColumnTitle = firstRow.getColumnTitle(0);
  // 5° Utiliser la fonction getColumnTitle(1) pour afficher le titre de la première colonne
  String secondColumnTitle = firstRow.getColumnTitle(1);

  /* 6° Utiliser la fonction println() pour afficher le titre de la première et de la seconde colonne
   en suivant le format suivant : 1ere colonne : pays / 2nde colonne : nombre */
  println("1ere colonne : " + firstColumnTitle + " / 2nde colonne : " + secondColumnTitle);

  // La fonction for utilisé ici permet de parcourir l'objet Table table ligne par ligne
  for (TableRow row : table.rows()) {
    // 7° Utiliser la fonction row.getString() pour obtenir le champ "pays" de chacune des lignes de l'objet table
    String country = row.getString("pays");

    // 8° Utiliser la fonction row.getString() pour obtenir le champ "nombre" de chacune des lignes de l'objet table
    int count = row.getInt("nombre");

    /* 9° Pour chacune des lignes, afficher dans la console les champs pays et nombre
    en suivant l'exemple suivant : pays : France / nombre : 1243 */
    println("pays : " + country + " / nombre : " + count);
  }
}
