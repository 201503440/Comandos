#Segun la forma en la que se haya instalafo docker
#anteponer sudo en todos los comandos siguientes

#Mostrar informacion 
sudo docker info
#Version de docker
sudo docker version
#Ver imagenes en el sistema
sudo docker images
#Contenedores activos
sudo docker ps 
#Todos los contenedores activos o no
sudo docker ps -a
#Detener la ejecucion de un contenedor
sudo docker stop CONTAINER_ID
#Eliminar contenedores
sudo docker rm CONTAINER_ID #pueden ser solo las primeras dos letras
#Buscar imagenes
sudo docker search IMAGE_NAME
#Descargar una imagen
sudo docker pull IMAGE_NAME
#Eliminar una imagen
sudo docker rmi IMAGE_ID
#Ejecutar un contenedor y comando a la vez (luego de esto el contendor se detiene)
sudo docker run ubuntu ls #ejecuta contenedor ubuntu y con ls listamos los directorios
#Ejecutar contendor e interactuar desde la terminal
sudo docker run -i -t ubuntu bash #-i input -t terminal
#Iniciar contenedor detenido
sudo docker start CONTAINER_ID
#Conectarse a bash ya ejecutado
sudo docker attach CONTAINER_ID
#Crear contenedor con nombre
sudo docker run --name contenedor_name -it ubuntu #ubuntu es ejemplo*
#Ejecutar contenedor *****************************************************************
sudo docker run --name contenedor_name -d -p <pc-port>:<docker-port> <IMAGE_NAME>
#Salir de contenedor y detenerlo
exit
#Salir de contenedor iteractivo sin detenerlo
CTRL + p + q
#Eliminar contenedor 
sudo docker container rm CONTAINER_ID
#Crear imagen a partir de un contenedor 
sudo docker commit CONTAINER_ID newName
#Crear una imagen a partir de un Dockerfile
sudo docker build -t NEW_IMAGE_NAME RutaCompleta_CarpetaArchivos
#Informacion del contenedor
sudo docker inspect CONTAINER_ID
##******************************************************+
#Con docker-compose y docker file
#El siguiente comando construye y levanta los contenedores
sudo docker-compose up --build -d


#*******************************************************************************
#Construir imagen a partir de Dockerfile
#Generamos la imagen
sudo docker build -t <IMAGE_NAME>
#Correr imagen para crear contenedor
sudo docker run -d -p 5000:5000 IMAGE_NAME
#Debuguear un contenedor
sudo docker logs CONTAINER_ID


#***************************************************************************
#mongo container
sudo docker exec -it CONTAINER_ID mongo
