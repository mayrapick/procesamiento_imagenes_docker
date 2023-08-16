ESTE TRABAJO CONSISTE EN GENERAR UN CONTENEDOR QUE AL EJECUTARSE PRESENTE UN MENU DE OPCIONES PARA PROCESAR UN LOTE DE IMAGENES:
El menú consta de:
*GENERAR IMAGENES
Genera imágenes utilizando algún servicios web. Luego se comprimen las imágenes, y se genera un archivo con su suma de
verificación
*DESCARGAR IMAGENES:
Se indica por argumento dos url, el script descarga ambos y verifica que la suma de verificación del primer argumento es igual a la indicada en el segundo. Si ocurrió algún error se informa al usuario.
* DESCOMPRIMIR IMAGENES:
verificar que exista el archivo que se descargó o se creó con los scripts anteriores y lo descomprime
* PROCESAR IMAGENES:
 recorta las imágenes a una resolución de 512*512, procesa las imagenes que tengan nombres de personas válidos.
* COMPRIMIR IMAGENES:
– genera un archivo con la lista de nombres de todas las imágenes.
– genera un archivo con la lista de nombres válidos.
– genera un archivo con el total de personas cuyo nombre finaliza con la letra a.
– por último, genera un archivo comprimido que incluya los archivos generados en los items anteriores y todas las imágenes.

** LAS IMAGENES A ANALIZAR SE DESCARGAN O GENERAN DESDE INTERNET Y SE ALMACENAN DENTRO DE UN CONTENEDOR PARA SU POSTERIOR ANALISIS. LUEGO DEL ANALISIS, SE GENERA UN ARCHIVO DISPONIBLE FUERA DEL CONTENEDOR**

*INSTRUCCIONES SOBRE LA INSTALACION DE DOCKER Y COMO USARLO EN TU TERMINAL:
Vamos por pasos...
1) instala Docker en tu terminal con los siguientes comandos:
  $ sudo apt update
2) instalacion:
  $ sudo apt install docker
3)corroborar la correcta instalacion:
 $ sudo docker version
4) agregar el nombre de usuario para evitar escribir sudo
  $ sudo usermod -aG docker ${USER} --->opcional
5) clonamos desde nuestra cuenta de git, los archivos para poder ejecutarlos en un contenedor de manera local:
  creamos un directorio vacio
  clonamos desde github:
  git clone url
6) creamos una imagen de Docker
  docker build -t nombre_imagen
7) corremos docker:
  sudo docker run -it -v /home/home/carpeta:/home/app imagenes
 /home/home/carpeta es un ejemplo del directorio, usaremos la que creamos al inicio y en la que descargamos los archivos desde    github
8) Recordá que podes salir del contenedor con ctrl+d

