****************************************************************************************************
*********************************************KUBERNETES*********************************************
****************************************************************************************************

#Documentation
https://kubernetesbyexample.com

kubectl get nodes #Obtener los nodos del cluster
kubectl get pods #Obtener los pods del cluster
kubectl get pods -o wide #Obtener los pods del cluster con informacion mas detallada
kubectl get pod <POD-NAME> --watch #Ver los cambios que se estan realizando pobre un POD
kubectl get pods --watch #Ver los cambios que se estan realizando pobre todos los PODS
kubectl delete pod <POD-NAME> #Eliminar pod segun su nombre
kubectl describe pod <POD-NAME> #Obtiene informacion importante del POD

kubectl run pod-ngnix --image=ngnix --port=80 #Crear pod ngnix

kubectl expose pod pod-ngnix --port=84 --target-port=80 --name=servicio-1 #Exponemos un pod a un puerto en especifico
kubectl get svc #Listamos los servicios

#Balanceador de carga
kubectl expose pod pod-ngnix --port=84 --target-port=80 --name=Balanceador --type=LoadBalancer #Exponemos un balanceador de carga nginx
#Eliminar un servicio determinado
kubectl delete svc <service-name>
#LABELS
kubectl label pod <POD-NAME> creador=<creador>
kubectl label pod <POD-NAME> app=<app-name>


****************************************************************************************************
#Crear contenedor a partir de imagen
kubectl create deployment <CONTAINER-NAME> --image=<IMAGE-NAME>:<VERSION>
#Exponer el puerto de un contenedor
kubectl expose deployment <CONTAINER-NAME> --type=LoadBalancer --port=<PORT>
#Otro ejemplo
kubectl create deployment <CONTAINER-NAME> --image=gcr.io/google-samples/hello-app:1.0
#Otro ejemplo con NodePort
kubectl expose deployment <CONTAINER-NAME> --type=NodePort --port=8080
#Obtener servicios en el cluster
kubectl get services
#Obtener servicio en especifico en el cluster
kubectl get service <SERVICE-NAME>
#Ejecutar una terminal del contenedor
kubectl exec -it <CONTAINER-NAME-FULL> /bin/bash


****************************************************************************************************
#Configuracion de ingres nginx en un pod
https://kubernetes.io/docs/tasks/access-application-cluster/ingress-minikube/
#Otro ejemplo
https://kubernetes.io/docs/concepts/services-networking/ingress/
#Ejemplo de Google
https://cloud.google.com/community/tutorials/nginx-ingress-gke
#Otro
https://cloud.google.com/kubernetes-engine/docs/tutorials/http-balancer

#instalar
glooctl
#Ejemplo con archivo
kubectl apply -f https://raw.githubusercontent.com/solo-io/gloo/v1.2.9/example/petstore/petstore.yaml

https://scott.cranton.com/function-routing-with-gloo.html
https://github.com/solo-io/envoy-operator/blob/master/deploy/example-envoy-with-gloo.yaml


#****************************************************************************************************
https://kubernetes.io/es/docs/concepts/overview/working-with-objects/namespaces/


#****************************************************************************************************
#Create a namespace

#my-namespaceName.yaml
apiVersion: v1
kind: Namespace
metadata:
  name: <insert-namespace-name-here>

#Run or create a namespace
kubectl create -f ./my-namespace.yaml

#Crear un namespace alternativa
kubectl create namespace <insert-namespace-name-here>

#Delete a namespace
kubectl delete namespaces <insert-some-namespace-name>

#Obtener namespaces
kubectl get namespaces

#Obtener namespaces con labels
kubectl get namespaces --show-labels

#Describir un espacio de nombre
kubectl describe namespaces <name>

#Para indicar de forma temporal el espacio de nombres para una petición, usa la opción --namespace
#Ejemplos
kubectl --namespace=<insert-namespace-name-here> run nginx --image=nginx
kubectl --namespace=<insert-namespace-name-here> get pods
kubectl get pods --namespace=test

kubectl apply --namespace=test -f archivo.yaml
kubectl apply -f archivo.yaml

#Establecer la preferencia de espacio de nombres
#Puedes indicar de forma permanente el espacio de nombres para todas las llamadas futuras
#a comandos kubectl en dicho contexto.
kubectl config set-context --current --namespace=<insert-namespace-name-here>
# Validate it
kubectl config view | grep namespace:


##Cambiarme a namespace
kubectl config set-context --current --namespace=<NAME-SPACE>
#Servicio python
kubectl expose pod project-pod --port=5000 --target-port=5000 --name=servicio-python

kubectl expose deployment <IP> --name=loadbalancerTest --port=80 --target-port=8080 --type=LoadBalancer


#**************************************
#REACT
kubectl create deployment <NAME> --image=<IMAGE-DOCKERHUB>
kubectl expose deployment <NAME> --type=LoadBalancer --port=<PUERTO_DONDE_ESCUCHA_CONTENEDOR>
kubectl get svc
kubectl scale deployment --replicas=3 <NAME>


#************************************
kubectl --namespace=project create deployment golang-mq --image=201503440/sopes1proyecto2:latest
kubectl --namespace=project expose deployment golang-mq --type=LoadBalancer --port=8080


/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
