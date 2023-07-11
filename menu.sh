#!/bin/bash

#MENU:

echo "Seleccione una opcion de las siguientes: "
echo "1 GENERAR IMAGENES"
echo "2 DESCARGAR IMAGENES Y VERIFICAR SUMA DE VERIFICACION"
echo "3 DESCOMPRIMIR IMAGENES"
echo "4 PROCESAR IMAGENES"
echo "5 COMPRIMIR ARCHIVOS"
echo "6 SALIR"
 
read opcion

# EJECUCUCION MENU:

case $opcion in 

1)
 echo "ingrese la cantidad de imagenes a generar: "
 read cantidad_imagenes
 ./generar.sh $cantidad_imagenes
 ;;
2) 
  echo "ingrese la url de las imagenes: "
  read url_suma_verificacion
  ./descargar.sh "$url_imagenes" "$url_suma_verificacion"
  ;;
3)
  ./descomprimir.sh
  ;;
4)
  ./procesar.sh
  ;;
5)
  ./comprimir.sh
  ;;
6)
  exit 0
  ;;
*)
  echo "OPCION INVALIDA, VUELVA A INTENTAR"
  exit 1
  ;;

esac 

