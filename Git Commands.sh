Git Commands - Cesar Dionicio Sazo Mayen - 201503440

	- -Configurar nombre y contraseña global
git config --global user.name "username"
git config --global user.email "email"
git config --global user.password "password"
#Aqui vemos la configuracion global de la computadora
git config --list

	- -Iniciar repositorio
git init

	- -Estado de git
git status

	- -Clonar repositorio
git clone /path/to/repository

	- -Branch
#nos muestra la lista de todas las ramas (Branch) creadas
git branch
#crear una rama (branch)
git branch [Branch_Name]
#cambiarnos de rama (branch)
git checkout [Branch_Name]
#crear rama (branch) y cambiarme a ella
#******************************************************
git checkout -b [Branch_Name]
#******************************************************
#Creamos una branch a partir de otra
git checkout -b subbranch_of_b1 branchOrigin

#renombrar rama
git branch -m [Old_Name] [Branch_NewName]
#remoto
git push origin :[Old_Name] [Branch_NewName]
#eliminar rama
git branch -d [Branch_Name]
#eliminar de remoto
git push origin --delete [Branch_Name]
#Remoto
git push origin --delete <NombreRama>
#subir rama (branch) al repositorio
git push origin [Branch_Name]
#ayuda para saber que commandos usar
git branch -h

	- -Commit
git add .
git commit -m "Description"
git commit -am "Description"
git push origin [Branch]

	- -Ver Commit
#aqui vemos los log completos
git log 
#aqui vemos los log resumidos *********
git log --oneline

	- -Revertir Commit
#resetea hasta el CommitID que le indiquemos
git reset [CommitID]
#resetea hasta "n" Commit que le indiquemos
git reset --hard HEAD~[n]
#sincronizar cambios al Master
git push origin master --force

 	- -Merge
 #Para ello nos posicionamos en la rama (branch) a la que queremos unir desde otra rama
git merge [RamaFuente]
#Terminar con un commit

 	- -Reset cambios locales y commits (traer la ultima version del servidor y apuntar a nuestra copia local)
git fetch origin
git reset --hard origin/master



	- -Git Flow
#Inicia el repositorio con git flow
git flow init
#Crear una nueva rama que sale de develop
git flow feature start carnet_feature_name
#.#.
#.#.
#TRABAJAR EN LA FEATURE
#.#.
#.#.
#Realiza commit
git add .
git commit -m "descripcion del commit"
#Publicar la feature en el repositorio remoto
git flow feature publish feature_name

#Finalizar la feature (hace merge automaticamente en el develop)

#primero -> 
git checkout develop 
#Verificar rama develop porque puede estar atrasada
git pull
#segundo -> 
git flow feature finish feature_name --keepremote

#subir los cambios de develop al repositorio remoto
git push -u origin develop 


#************RELEASE*****************************************************
# Crear liberación
git flow release start 1.0.0

# Confirmar los cambios que se hayan realizado
git status
git add -A
git commit -m "Add release notes"

# Finalizar liberación
git flow release finish 1.0.0

# Subir cambios de la rama develop
git checkout develop
git push

# Subir cambios de la rama master
git checkout master
git push
#************FIN RELEASE*************************************************




