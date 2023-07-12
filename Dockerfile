FROM ubuntu:latest
 
RUN apt-get update && apt install -y git && apt-get install -y curl && apt-get install -y wget && apt-get update && apt-get install -y zip

RUN apt-get update && apt install -y imagemagick 

RUN mkdir -p /home/app/

WORKDIR /home/app/

COPY generar.sh /home/app/

COPY descargar.sh /home/app/
 
COPY descomprimir.sh /home/app/
 
COPY procesar.sh /home/app/
 
COPY comprimir.sh /home/app/
 
COPY menu.sh /home/app/

RUN mkdir /home/app/salida 

ENV OUTPUT_DIR=/output

CMD ["/bin/bash" , "/home/app/menu.sh"]
