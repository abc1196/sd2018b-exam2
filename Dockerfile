FROM ubuntu:16.04

#Install package
RUN apt-get update -y && apt-get install -y postgresql

#Configuracion del puerto de postgres
EXPOSE 5432
CMD postgresql -m http.server 5432
