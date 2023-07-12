#!/bin/bash

#VAMOS A VERIFICAR QUE EXISTE LA CARPETA O DIRECTORIO:

if [ ! -f imagenes.zip ]; then
   echo "Error, no se encuentra el archivo o no existe"
   exit 1
fi
#CREAMOS CARPETA:
unzip imagenes.zip -d imagenes_recortadas
# VAMOS A RECORTAR LAS IMAGENES A UN TAMAÑO 512 X 512
for archivo in imagenes_recortadas/*; do
    nombre_archivo=$(basename "$archivo")

    if [[ $nombre_archivo =~ ^[A-Z][a-z]+$ ]]; then
     
      convert "$archivo" -thumbnail 512x512^ -gravity center -extent 512x512 "$nombre_archivo"_recortadas 
      mv "$nombre_archivo"_recortadas imagenes_recortadas
      rm "$archivo"
     
    fi

done
