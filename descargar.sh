#!/bin/bash

#VAMOS A VERIFICAR EL NUMERO DE ARGUMENTOS:
if [ $# -ne 2 ]; then
  echo "se deben escribir 2 url: $0 <url_imagenes> <url_suma_verificacion"
  exit 1
fi

url_imagenes=$1
url_suma_verificacion=$2

#VAMOS A DESCARGAR IMAGENES Y LA SUMA DE VERIFICACION:
wget -O imagenes.zip $url_imagenes
wget -O suma_de_verificacion.txt $url_suma_verificacion

#VAMOS A VERIFICAR LA SUMA DE VERIFICACION:
suma_verif_generada=$(sha256sum imagenes.zip 1 awk '{ print $1}')
suma_verif_descargada=$(cat suma_de_verificacion.txt)

if [ $suma_verificacion_generada != $suma_verificacion_descargada ]; then
  echo "Error: La suma de verificación no coincide."
  exit 1
fi
