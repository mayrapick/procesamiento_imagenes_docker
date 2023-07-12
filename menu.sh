#!/bin/bash

#bucle para que aparezca siempre el menú:
opcion=0

while [ $opcion -ne 6 ]; do

  # MOSTRAMOS EL MENU:

  echo "Seleccione una opcion de las siguientes: "
  echo "1 GENERAR IMAGENES"
  echo "2 DESCARGAR IMAGENES Y VERIFICAR SUMA DE VERIFICACION"
  echo "3 DESCOMPRIMIR IMAGENES"
  echo "4 PROCESAR IMAGENES"
  echo "5 COMPRIMIR ARCHIVOS"
  echo "6 SALIR"
  echo "ingrese el numero de la opción deseada: "

 #LEEMOS  LA OPCION :
  read opcion
# EVALUAMOS LA OPCION:
  case $opcion in 
   1)
     echo "seleccionó la opción 1"
     echo "ingrese la cantidad de imagenes a generar: "
     read cantidad_imagenes
     ./generar.sh $cantidad_imagenes
     ;;
   2)
     echo "seleccionó la opción 2" 
     echo "ingrese la url de las imagenes: "
     read url_suma_verificacion
     ./descargar.sh "$url_imagenes" "$url_suma_verificacion"
     ;;
   3)
     echo "seleccionó la opción 3"
     ./descomprimir.sh
     ;;
   4)
     echo "seleccionó la opcion 4"
     ./procesar.sh
     ;;
   5)
     echo "seleccionó la opción 5"
     ./comprimir.sh
     ;;
   6)
     echo "saliendo del programa"
     exit 0
     ;;
   *)
     echo "OPCION INVALIDA, VUELVA A INTENTAR"
     exit 1
     ;;

  esac 
done
