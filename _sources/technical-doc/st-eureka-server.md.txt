# Microservicio st-eureka-server

Servidor de descubrimiento de servicios.

Para realizar el despliegue se deben seguir las siguientes indicaciones:

## Configurar propiedades

En el archivo ***st-eureka-server.yml*** se encuentran las propiedades de configuración del microservicio. Se pueden modificar las siguientes propiedades:

### Puerto del Servidor

Si se requiere cambiar el puerto donde se ejecuta el servicio, se debe modificar la siguiente propiedad:

```yaml
server:
  port: 8761
```

## Clonar repositorio

Se debe clonar el repositorio [**st-eureka-server**](https://github.com/SwissTierrasColombia/st-eureka-server) almacenado en github y posteriormente generar el jar del proyecto a través de maven.

```sh
$ git clone https://github.com/SwissTierrasColombia/st-eureka-server.git
$ cd st-eureka-server && git checkout master
$ mvn clean package -DskipTests
```

## Crear imagen docker

Se debe crear la imagen docker a partir del archivo Dockerfile que se encuentra en el repositorio, esta imagen requiere que se le pasen los siguientes argumentos:

- **XMX**: Límite en RAM que el jar utilizará.
- **PROFILE**: Perfil o ambiente en el cual se ejecutará el jar. En producción se debe usar el perfil production.
- **CLOUD_CONFIG**: Url del servidor de configuración.

```sh
$ docker build -t st-eureka-server:lynx --build-arg XMX=<xmx> --build-arg PROFILE=<perfil> --build-arg CLOUD_CONFIG=<url-cloud-config> .
```

Por ejemplo:

```sh
$ docker build -t st-eureka-server:lynx --build-arg XMX=1024m --build-arg PROFILE=production --build-arg CLOUD_CONFIG=http://st-config-server:8890 .
```

## Ejecutar el contenedor

Se debe ejecutar el contenedor a partir de la imagen creada asignando un límite de memoria RAM, la red docker previamente creada y un puerto de acceso.

```sh
$ docker run -p <puerto>:8762 --name st-eureka-server --network <nombre-red-docker> -m <ram> -d st-eureka-server:lynx
```

Por ejemplo:

```sh
$ docker run -p 8762:8762 --name st-eureka-server --network st -m 1024M -d st-eureka-server:lynx
```



