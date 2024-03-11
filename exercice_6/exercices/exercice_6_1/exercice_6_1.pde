/**
 [
 {
 "species": "cat",
 "width": 350,
 "height": 450,
 "path": "cat.png"
 },
 {
 "species": "dog",
 "width": 350,
 "height": 450,
 "path": "dog.png"
 }
 ]
 */

JSONArray animals;

void setup() {
  size(800, 800);
  // 1. Charger le fichier animals.json se trouvant dans le dossier data
  //animals = loadJSONArray();
  //println(animals);
  /*
      Pour chacun des objets json présent dans le fichier animals.json,
      nous allons afficher l'animal correspondant sur le canvas
   */
  for (int i = 0; i < animals.size(); i++) {
    // On crée une variable animal qui pointe vers l'objet json à l'index i du tableau animals.json
    JSONObject animal = animals.getJSONObject(i);
    
    // 2. A l'aide de la fonction animal.getString(), aller chercher la chaine de caractère correspondante au champ "species"
    //String species = ...;
    
    // 3. A l'aide de la fonction println(), afficher le champs species dans la console
    //...;
    
    // 4. De la même manière, charger le champs "path" dans la variable image_path
    //String image_path = ...;
    
    // 5. Utilisez la fonction animal.getInt() pour obtenir le champs "width" et " height"
    //int animal_width = ...;
    //int animal_height = ...;
    
    PImage animal_image;
    
    // 6. Utilisez la variable image_path pour charger l'image correspondante (le chat pour i = 0 et le chien pour i = 1)
    //animal_image = ...;
    // 7. Utiliser les variables animal_image, animal_width et animal_height pour afficher l'image des deux animaux à des positions aléatoires
    imageMode(CENTER);
    //image(...);
  }
}
