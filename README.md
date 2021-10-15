# Proyecto en Node con gitlab y kubernetes

Se construyo en proyecto sencillo en node, con un ci en gilab que :
  
  - Testea el codigo en node
  - Compila una imagen en docker
  - Deploya la imagen en kuberntes

## GITLAB-CI

El ci de gitlab esta hecho en 3 pasos :

  - test        -- test del codigo en node
  - build       -- compilacion de la imagen de docker
  - deploy-eks  -- deploy de la imagen de docker ne kuberntes

Para este proyecto se uso la registry de gitlab de manera publica.
No se uso configmaps ni secrets porque no se llego con el tiempo.
Se tomo como base una aplica ya deploya y lo que se hace es actualizar la imagen. Los yamls del desplieuge se encuentran en la carpeta yaml del presente repositor

## Dockerfile

Se uso un dockerfile sencille que copia los archivos de nodejs e instala las dependencias

## YAML 

Se encuentran los 2 archivos de deploy

  - deployment.yaml     -- archivo para deployar el pod
  - service.yaml        -- archivo para deployar el servicio