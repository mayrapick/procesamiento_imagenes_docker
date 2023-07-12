#!/bin/bash

# VAMOS A VERIFICAR LA EXISTENCIA DEL ARCHIVO

if [ ! -f imagenes.zip ]; then
   echo "Error: no se encuentra el archivo 'imagenes.zip'"
   exit 1
fi

# PARA DESCOMPRIMIR EL ARCHIVO:

unzip imagenes.zip -d imagenes_descomprimidas 
echo "se descomprimieron exitosamente"
exit 0

