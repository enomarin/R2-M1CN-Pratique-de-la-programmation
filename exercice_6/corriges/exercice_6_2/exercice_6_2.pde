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

// Url de l'API open meteo, configuré pour obtenir la météo instantanée à Paris
String url =
  "https://api.open-meteo.com/v1/forecast?latitude=48.8567&longitude=2.3510&current_weather=true&timezone=auto";
void setup() {
  // On crée un canvas de 500px par 500px
  size(300, 300);

  textSize(24); // On défini la taille du texte
  textAlign(CENTER); // On centre le texte
  
  // On télécharge la météo et on la stocke dans la variable weather
  weather = loadJSONObject(url);

  // On teste si on a réussi à télécharger les données météo
  if (weather != null) {
    // 1. Utiliser la fonction println() pour afficher le contenue du fichier json que nous avons téléchargé
    println(weather);
    
    // 2. Utiliser la fonction weather.getJSONObject() pour stocker l'objet JSON current_weather dans une variable
    JSONObject current_weather = weather.getJSONObject("current_weather");
    
    // 3. Utiliser la fonction current_weather.getFloat() pour récupérer la température dans l'objet current_weather
    float temp = current_weather.getFloat("temperature");
    println(temp);
    
    // 4. Utiliser la fonction text() pour afficher la température dans le canvas
    text(temp + " °C", width/2, height /2);
    
    // 5° En suivant les étapes précédentes, afficher également la vitesse du vent dans le canvas
    float windspeed = current_weather.getFloat("windspeed");
    textSize(24);
    text(windspeed + " km/h", width/2, height /2 + 50);
  }
}
