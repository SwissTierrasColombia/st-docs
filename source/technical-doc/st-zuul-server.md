# Microservicio st-zuul-server

Funciona como puerta enlace a todos los demás microservicios, de igual forma se comporta como un servidor de recurso protegiendo los endpoints.

Para realizar el despliegue se deben seguir las siguientes indicaciones:

## Configurar propiedades

En el archivo ***st-zuul-server.yml*** se encuentran las propiedades de configuración del microservicio. Se pueden modificar las siguientes propiedades:

### URL Servidor Eureka

Si se requiere cambiar la url del servidor de descubrimiento eureka, se debe modificar la siguiente propiedad:

```yaml
eureka:
  client:
    serviceUrl:
      defaultZone: http://st-eureka-server:8762/eureka
```

### Puerto del Servidor

Si se requiere cambiar el puerto donde se ejecuta el servicio, se debe modificar la siguiente propiedad:

```yaml
server:
  port: 8091
```

## Clonar repositorio

Se debe clonar el repositorio [**st-zuul-server**](https://github.com/SwissTierrasColombia/st-zuul-server) almacenado en github y posteriormente generar el jar del proyecto a través de maven.

```sh
$ git clone https://github.com/SwissTierrasColombia/st-zuul-server.git
$ cd st-zuul-server && git checkout master
$ mvn clean package -DskipTests
```

## Crear imagen docker

Se debe crear la imagen docker a partir del archivo Dockerfile que se encuentra en el repositorio, esta imagen requiere que se le pasen los siguientes argumentos:

- **XMX**: Límite en RAM que el jar utilizará.
- **PROFILE**: Perfil o ambiente en el cual se ejecutará el jar. En producción se debe usar el perfil production.
- **CLOUD_CONFIG**: Url del servidor de configuración.

```sh
$ docker build -t st-zuul-server:lynx --build-arg XMX=<xmx> --build-arg PROFILE=<perfil> --build-arg CLOUD_CONFIG=<url-cloud-config> .
```

Por ejemplo:

```sh
$ docker build -t st-zuul-server:lynx --build-arg XMX=3072m --build-arg PROFILE=production --build-arg CLOUD_CONFIG=http://st-config-server:8890 .
```

## Ejecutar el contenedor

Se debe ejecutar el contenedor a partir de la imagen creada asignando un límite de memoria RAM, la red docker previamente creada y un puerto de acceso.

```sh
$ docker run -p <puerto>:8091 --name st-zuul-server --network <nombre-red-docker> -m <ram> -d st-zuul-server:lynx
```

Por ejemplo:

```sh
$ docker run -p 8091:8091 --name st-zuul-server --network st -m 4096M -d st-zuul-server:lynx
```

