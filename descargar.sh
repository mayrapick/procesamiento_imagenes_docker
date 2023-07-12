#!/bin/bash

#VAMOS A VERIFICAR EL NUMERO DE ARGUMENTOS:
if [ $# -ne 2 ]; then
  echo "se deben escribir 2 url: $0 <url_imagenes> <url_suma_verificacion"
  exit 1
fi

url_imagenes="$1"
url_suma_verificacion="$2"

# Extrae las imágenes del archivo ZIP
unzip imagenes.zip -d ./imagenes_extraidas 

#VAMOS A DESCARGAR IMAGENES Y LA SUMA DE VERIFICACION:
#wget -q "$url_imagenes" -O #IMAGEN_deSCARGADA.JPG
wget -q "$url_suma_verificacion" -O suma_de_verificacion.txt

# Verificar las sumas de verificación de las imágenes extraídas
#for imagen in imagenes_extraidas; do
   # suma_verif_calculada=$(sha256sum "$imagen" | awk '{print $1}')
    suma_verif_calculada=$(find ./imagenes_extraidas -type f -exec sha256sum {} \; | awk '{print$1}' | sort | sha256sum)
    suma_verif_descargada=$(cat suma_de_verificacion.txt| awk '{print $1}')

   if [ "$suma_verificacion_generada" != "$suma_verificacion_descargada" ]; then
       echo "Error: La suma de verificación no coincide."
       exit 1
   else
     echo "La suma coincide"
   fi

