EN ESTE DOCUMENTO ENCONTRARÁS INSTRUCCIONES SOBRE LA INSTALACION DE DOCKER Y COMO USARLO EN TU TERMINAL:
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

