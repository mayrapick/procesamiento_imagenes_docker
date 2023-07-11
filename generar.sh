#!/bin/bash

#VAMOS A VERIFICAR QUE EL NUMERO DE ARGUMENTOS SEA CORRECTO:
if [ $# -ne 1 ]; then
   echo "Uso: $0 <cantidad_imagenes>"
   exit 1
fi

cantidad_imagenes=$1

wget dict.csv  https://raw.githubusercontent.com/adalessandro/EdP-2023-TP-Final/main/dict.csv

nombres=()

while IFS=',' read -r nombre _; do
  nombres+=("$nombre")
done < dict.csv

#VAMOS A GENERAR LAS IMAGENES:
for ((i=1; i<=cantidad_imagenes; i++))
do
  nombre_imagen=${nombres[$RANDOM % ${#nombres[@]}]}
  wget -O $nombre_imagen  https://source.unsplash.com/random/900%C3%97700/?person
  sleep 5s


#VAMOS A COMPRIMIR LAS IMAGENES:

  zip imagenes $nombre_imagen

done 
#GUARDAR LA SUMA DE VERIFICACION DE LAS IMAGENES

  sha256sum imagenes.zip > suma_de_verificacion.txt


