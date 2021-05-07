# Componente st-common

Componente que centraliza ciertas funcionalidades comunes que son utilizadas por los diferentes microservicios.

Para realizar el despliegue se deben seguir las siguientes indicaciones:

## Clonar repositorio

Se debe clonar el repositorio [**st-common**](https://github.com/SwissTierrasColombia/st-common) almacenado en github y posteriormente generar el jar del proyecto a través de maven.

```sh
$ git clone https://github.com/SwissTierrasColombia/st-common
$ cd st-common && git checkout master
$ mvn clean package
```

## Instalar JAR en el repositorio local de maven

Para instalar este componente en el repositorio local de maven con el objetivo que otros microservicios puedan incluirlo en sus dependecias se debe ejecutar el siguiente comando:

```sh
$ mvn install:install-file \
   -Dfile=/path/to/st-common/target/st-common-1.0.0.jar \
   -DgroupId=com.ai.st.microservice.common \
   -DartifactId=st-common \
   -Dversion=1.0.0 \
   -Dpackaging=jar \
   -DgeneratePom=true 
```

Actualmente los microservicios que hacen uso de este componente son:

- st-microservice-administration