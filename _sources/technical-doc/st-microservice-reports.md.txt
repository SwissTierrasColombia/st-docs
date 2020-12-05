# Microservicio st-microservice-reports

Permite la generación de reportes a través de [jaspersoft](https://www.jaspersoft.com/).

Para realizar el despliegue se deben seguir las siguientes indicaciones:

## Configurar propiedades

En el archivo ***st-microservice-reports.yml*** se encuentran las propiedades de configuración del microservicio. Se pueden modificar las siguientes propiedades:

### URL Servidor Eureka

Si se requiere cambiar la url del servidor de descubrimiento eureka, se debe modificar la siguiente propiedad:

```yaml
eureka:
  client:
    serviceUrl:
      defaultZone: http://st-eureka-server:8762/eureka
```

## Clonar repositorio

Se debe clonar el repositorio [**st-microservice-reports**](https://github.com/SwissTierrasColombia/st-microservice-reports) almacenado en github y posteriormente generar el jar del proyecto a través de maven.

```sh
$ git clone https://github.com/SwissTierrasColombia/st-microservice-reports.git
$ cd st-microservice-reports && git checkout master
$ mvn clean package -DskipTests
```

## Crear imagen docker

Se debe crear la imagen docker a partir del archivo Dockerfile que se encuentra en el repositorio, esta imagen requiere que se le pasen los siguientes argumentos:

- **XMX**: Límite en RAM que el jar utilizará.
- **PROFILE**: Perfil o ambiente en el cual se ejecutará el jar. En producción se debe usar el perfil production.
- **CLOUD_CONFIG**: Url del servidor de configuración.

```sh
$ docker build -t st-microservice-reports:lynx --build-arg XMX=<xmx> --build-arg PROFILE=<perfil> --build-arg CLOUD_CONFIG=<url-cloud-config> .
```

Por ejemplo:

```sh
$ docker build -t st-microservice-reports:lynx --build-arg XMX=1024m --build-arg PROFILE=production --build-arg CLOUD_CONFIG=http://st-config-server:8890 .
```

## Ejecutar el contenedor

Se debe ejecutar el contenedor a partir de la imagen creada asignando un límite de memoria RAM, la red docker previamente creada y el volumen de almacenamiento compartido.

```sh
$ docker run -P -t --network <nombre-red-docker> -m <ram> -d -v <directorio-repositorio-maquina-local>:<directorio-repositorio-contenedor> st-microservice-reports:lynx
```

Por ejemplo:

```sh
$ docker run -P -t --network st -m 500M -d -v /opt/st/repositorio:/opt/st/repositorio st-microservice-reports:lynx
```