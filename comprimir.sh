#!/bin/bash

#VAMOS A GENERAR UN ARCHIVO CON LISTA DE NOMBRES DE TODAS LAS IMAGENES

ls -1 imagenes* | awk -F/ '{print $NF}' > lista_nombres_imagenes.txt

# CON LISTA DE NOMBRES VALIDOS:

grep -E '^[A-Z][a-z]+$' lista_nombres_imagenes.txt > lista_nombres_validos.txt

# TOTAL DE PERSONAS QUE EL NOMBRE TERMINE CON "A":

grep -c 'a$' lista_nombres_validos.txt > total_nombres_en_a.txt

#COMPRIMIR ARCHIVOS Y DIRECTORIOS:

zip comprimidos lista_nombres_imagenes.txt lista_nombres_validos.txt total_nombres_en_a.txt

exit 0 |  echo "se descomprimieron exitosamente los archivos"
