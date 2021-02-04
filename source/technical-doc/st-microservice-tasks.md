# Microservicio st-microservice-tasks

Permite la gestión de tareas para los usuarios.

Para realizar el despliegue se deben seguir las siguientes indicaciones:

## DDL

En el archivo ***resources/database/ddl/st-microservice-tasks.sql*** se encuentra el script para crear el DDL que necesita el microservicio.

Se debe descargar y ejecutar el script:

```sh
$ psql -h <host> -p <puerto> -U <usuario> -d <nombre-base-datos> -f st-microservice-tasks.sql
```

Por ejemplo:

```sh
$ psql -h localhost -p 5432 -U postgres -d sistema-transicion -f st-microservice-tasks.sql
```

## Configurar propiedades

En el archivo ***st-microservice-tasks.yml*** se encuentran las propiedades de configuración del microservicio. Se pueden modificar las siguientes propiedades:

### URL Servidor Eureka

Si se requiere cambiar la url del servidor de descubrimiento eureka, se debe modificar la siguiente propiedad:

```yaml
eureka:
  client:
    serviceUrl:
      defaultZone: http://st-eureka-server:8762/eureka
```

### Conexión base de datos

Si se requiere cambiar las credenciales de conexión a la base de datos, se deben modificar las siguientes propiedades:

```yaml
datasource:
    url: jdbc:postgresql://192.168.0.3:5432/sistema-transicion
    username: postgres
    password: 123456
```

## Clonar repositorio

Se debe clonar el repositorio [**st-microservice-tasks**](https://github.com/SwissTierrasColombia/st-microservice-tasks) almacenado en github y posteriormente generar el jar del proyecto a través de maven.

```sh
$ git clone https://github.com/SwissTierrasColombia/st-microservice-tasks.git
$ cd st-microservice-tasks && git checkout master
$ mvn clean package -DskipTests
```

## Crear imagen docker

Se debe crear la imagen docker a partir del archivo Dockerfile que se encuentra en el repositorio, esta imagen requiere que se le pasen los siguientes argumentos:

- **XMX**: Límite en RAM que el jar utilizará.
- **PROFILE**: Perfil o ambiente en el cual se ejecutará el jar. En producción se debe usar el perfil production.
- **CLOUD_CONFIG**: Url del servidor de configuración.

```sh
$ docker build -t st-microservice-tasks:lynx --build-arg XMX=<xmx> --build-arg PROFILE=<perfil> --build-arg CLOUD_CONFIG=<url-cloud-config> .
```

Por ejemplo:

```sh
$ docker build -t st-microservice-tasks:lynx --build-arg XMX=1024m --build-arg PROFILE=production --build-arg CLOUD_CONFIG=http://st-config-server:8890 .
```

## Ejecutar el contenedor

Se debe ejecutar el contenedor a partir de la imagen creada asignando un límite de memoria RAM y la red docker previamente creada.

```sh
$ docker run -P -t --network <nombre-red-docker> -m <ram> -d st-microservice-tasks:lynx
```

Por ejemplo:

```sh
$ docker run -P -t --network st -m 500M -d st-microservice-tasks:lynx
```