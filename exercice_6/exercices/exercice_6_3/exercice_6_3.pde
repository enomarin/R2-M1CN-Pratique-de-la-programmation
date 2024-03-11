/*
Dans ce second exercice, nous allons utiliser une api d'un site de météo afin d'obtenir et d'afficher les données météos en temps réel.
 Nous allons travailler avec l'objet JSON que le site open-meteo.com nous envoie.
 Celui-ci se présente de la manière suivante :
 
 {
 "elevation": 45,
 "generationtime_ms": 0.05996227264404297,
 "timezone_abbreviation": "CET",
 "timezone": "Europe/Paris",
 "current_weather_units": {
 "weathercode": "wmo code",
 "temperature": "°C",
 "windspeed": "km/h",
 "is_day": "",
 "interval": "seconds",
 "time": "iso8601",
 "winddirection": "°"
 },
 "latitude": 48.86,
 "utc_offset_seconds": 3600,
 "current_weather": {
 "weathercode": 3,
 "temperature": 8.1,
 "windspeed": 7.4,
 "is_day": 0,
 "interval": 900,
 "time": "2024-02-20T19:30",
 "winddirection": 203
 },
 "longitude": 2.3599997
 }
*/

// On initialise une variable weather qui contiendra les données météo.
JSONObject weather;
PImage sunny, cloudy, rainy;
// Url de l'API open meteo, configuré pour obtenir la météo instantanée à Paris
String url =
  "https://api.open-meteo.com/v1/forecast?latitude=48.8567&longitude=2.3510&current_weather=true&timezone=auto";

void setup() {
  // On crée un canvas de 500px par 500px
  size(300, 300);
  background(255);
  textSize(24); // On défini la taille du texte
  textAlign(CENTER); // On centre le texte
  fill(0);
  imageMode(CENTER); // On centre les images
  
  // On charge les images illustrant les trois météo de notre sketch;
  cloudy = loadImage("cloudy.png");
  rainy = loadImage("rainy.png");
  sunny = loadImage("sunny.png");

  // On télécharge la météo et on la stocke dans la variable weather
  weather = loadJSONObject(url);

  // On teste si on a réussi à télécharger les données météo
  if (weather != null) {
    JSONObject current_weather = weather.getJSONObject("current_weather");

    // 1. Reprendre l'exercice précédent pour afficher la température et la vitesse du vent en bas du canvas
    // A vous de jouer !
    
    // 2. Utiliser la fonction current_weather.getInt() afin d'obtenir le code météo actuel de Rennes
    //int weatherCode
    //println(weatherCode);
    
    // 3. Afficher l'image de ciel nuageux au centre du canvas
    // note : si le code météo est différent, il se peut que l'image ne d'affiche pas
    /*
    if (weatherCode >= 51 && weatherCode <= 57) {
      image();
    }
   */
   
    // 4. Completer le code afin d'afficher également l'image au code 0 à 3 (ciel dégagé)
    /*
    if (weatherCode >= 0 && weatherCode <= 3) {
      ...
    }
    */
    
    // 5. Completer le code afin d'afficher également l'image au code 61 à 67 (pluie)
  }
}
