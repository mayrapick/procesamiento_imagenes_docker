#!/bin/bash

#VAMOS A VERIFICAR QUE EL NUMERO DE ARGUMENTOS SEA CORRECTO:
if [ $# -ne 1 ]; then
   echo "Uso: $0 <cantidad_imagenes>"
   exit 1
fi

cantidad_imagenes=$1

wget dict.csv  https://raw.githubusercontent.com/adalessandro/EdP-2023-TP-Final/main/dict.csv

archivo="dict.csv"

# Delimitador utilizado en el archivo CSV
delimitador=","

# Arreglo para almacenar los nombres que cumplan el patrón de búsqueda
nombres=()

# Patrón de búsqueda para filtrar los nombres que comiencen con mayúscula y sigan con minúsculas
patron="^[A-Z][a-z]+"

# Bucle para leer línea por línea del archivo y almacenar los nombres que cumplan el patrón
while IFS="$delimitador" read -r nombre _
do
  if [[ $nombre =~ $patron ]]; then
    nombres+=("$nombre")
  fi
done < "$archivo"

# Imprimir los nombres que cumplan el patrón de búsqueda
#for nombre in "${nombres[@]}"
#do
#  echo "$nombre"
#done
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


