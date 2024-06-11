#!/bin/bash

api_key="a84d6dff6c564740a10232844241006"
ciudad="Bahia Blanca" #Ciudad donde desea saber el clima
pais="Argentina" #Pais donde desea saber el clima
 
url="http://api.weatherapi.com/v1/current.json?key=${api_key}&q=${ciudad},${pais}"


response=$(curl -s $url)  #El JSON del clima





temp=$(echo "$response" | jq -r ".current.temp_c")   #Se obtiene la temperatura

wind=$(echo "$response" | jq -r ".current.wind_kph")     #Se obtiene el viento

humidity=$(echo "$response" | jq -r ".current.humidity")   #Se obtiene la humedad

echo "Temperatura actual en ${ciudad}, ${pais}: ${temp}°C"

echo "  Viento: ${wind} km/h"

echo "  Humedad: ${humidity}%"






























#url="http://wttr.in/?format=j1"

#json="$(wget -qO- "$url")"

#temp=$(echo $json|jq -r ."current_condition[0]|(.temp_C)")
#humidity=$(echo $json|jq -r ."current_condition[0]|.humidity")
#description=$(echo $json|jq -r ."current_condition[0]|(.weatherDesc[0].value)")

#echo "El cielo esta : ${bold}${description}${normal}"
#echo "Temperatura: ${temp}°C "
#echo "Humedad: ${humidity}%"




#${color} ${default}