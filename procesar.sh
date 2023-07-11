#!/bin/bash

#VAMOS A VERIFICAR QUE EXISTE LA CARPETA O DIRECTORIO:

if [ ! -f imagenes.zip ]; then
   echo "Error, no se encuentra el archivo o no existe"
   exit 1
fi

# VAMOS A RECORTAR LAS IMAGENES A UN TAMAÑO 512 X 512
for archivo in imagenes.zip

do
  nombre_archivo=$(basename "$archivo")
  nombre_persona=$(echo "$nombre_archivo" | sed 's/\.jpg$//')

  if [[ $nombre_persona =~ ^[A-Z][a-z]+$ ]]; then
     convert "$archivo" -resize 512*512 "$nombre_archivo"_recortada.jpg
  fi

done
