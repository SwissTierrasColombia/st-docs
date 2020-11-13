# Microservicio st-microservice-workspaces

Procesa todas las reglas de negocio del sistema de transición.

Para realizar el despliegue se deben seguir las siguientes indicaciones:

## DDL

En el archivo ***resources/database/ddl/st-microservice-workspaces.sql*** se encuentra el script para crear el DDL que necesita el microservicio.

Se debe descargar y ejecutar el script:

```sh
$ psql -h <host> -p <puerto> -U <usuario> -d <nombre-base-datos> -f st-microservice-workspaces.sql
```

Por ejemplo:

```sh
$ psql -h localhost -p 5432 -U postgres -d sistema-transicion -f st-microservice-workspaces.sql
```

## DML

El microservicio almacena un listado de departamentos y municipios, estos al ser una cantidad considerable, se cargan a partir de un script sql. 

Los archivos ***resources/database/dml/st-departments.sql*** y ***resources/database/dml/st-municipalities.sql*** se deben descargar y ejecutar los scripts:

```sh
￼$ psql -h <host> -p <puerto> -U <usuario> -d <nombre-base-datos> -f st-departments.sql
$ psql -h <host> -p <puerto> -U <usuario> -d <nombre-base-datos> -f st-municipalities.sql
```

￼Por ejemplo:

```sh
$ psql -h localhost -p 5432 -U postgres -d sistema-transicion -f st-departments.sql
$ psql -h localhost -p 5432 -U postgres -d sistema-transicion -f st-municipalities.sql
```

## Configurar propiedades

En el archivo ***st-microservice-workspaces.yml*** se encuentran las propiedades de configuración del microservicio. Se pueden modificar las siguientes propiedades:

### URL Servidor Eureka

Si se requiere cambiar la url del servidor de descubrimiento eureka, se debe modificar la siguiente propiedad:

```yaml
eureka:
  client:
    serviceUrl:
      defaultZone: http://st-eureka-server:8762/eureka
```

### Conexión base de datos (workspaces)

Si se requiere cambiar las credenciales de conexión a la base de datos, se deben modificar las siguientes propiedades:

```yaml
datasource:
    url: jdbc:postgresql://192.168.0.3:5432/sistema-transicion
    username: postgres
    password: 123456
```

### Conexión base de datos (integraciones)

El microservicio necesita crear bases de datos temporales afines al tema de integración catastro-registro, por lo cual si se requiere cambiar las credenciales de conexión con la base de datos de integraciones se deben modificar las siguientes propiedades:

```yaml
integrations:
  database:
    hostname: 192.168.0.3
    username: postgres
    password: 123456
    port: 54322
```

### Conexion RabbitMQ

El microservicio realiza procesos en segundo plano a partir de un sistema de colas proporcionado por RabbitMQ, por lo cual si se requiere cambiar las credenciales de conexión con el servicio de RabbitMQ se deben modificar las siguientes propiedades en el archivo ***application.yml***:

```yaml
rabbitmq:
    host: st-rabbit
    port: 5672
    username: guest
    password: guest
```

## Clonar repositorio

Se debe clonar el repositorio [**st-microservice-workspaces**](https://github.com/SwissTierrasColombia/st-microservice-workspaces) almacenado en github y posteriormente generar el jar del proyecto a través de maven.

```sh
$ git clone https://github.com/SwissTierrasColombia/st-microservice-workspaces.git
$ cd st-microservice-workspaces && git checkout master
$ mvn clean package -DskipTests
```

## Crear imagen docker

Se debe crear la imagen docker a partir del archivo Dockerfile que se encuentra en el repositorio, esta imagen requiere que se le pasen los siguientes argumentos:

- **XMX**: Límite en RAM que el jar utilizará.
- **PROFILE**: Perfil o ambiente en el cual se ejecutará el jar. En producción se debe usar el perfil production.
- **CLOUD_CONFIG**: Url del servidor de configuración.

```sh
$ docker build -t st-microservice-workspaces:lynx --build-arg XMX=<xmx> --build-arg PROFILE=<perfil> --build-arg CLOUD_CONFIG=<url-cloud-config> .
```

Por ejemplo:

```sh
$ docker build -t st-microservice-workspaces:lynx --build-arg XMX=3072m --build-arg PROFILE=production --build-arg CLOUD_CONFIG=http://st-config-server:8890 .
```

## Ejecutar el contenedor

Se debe ejecutar el contenedor a partir de la imagen creada asignando un límite de memoria RAM, la red docker previamente creada y un volumen que define el espacio donde quedaran almacenados tanto los archivos finales y temporales.

```sh
$ docker run -P -t --network <nombre-red-docker> -m <ram> -d -v <directorio-repositorio-maquina-local>:<directorio-repositorio-contenedor> st-microservice-workspaces:lynx
```

Por ejemplo:

```sh
$ docker run -P -t --network st -m 4096M -d -v /opt/st/repositorio:/opt/st/repositorio st-microservice-workspaces:lynx
```

> **Nota:** En este caso tanto el directorio host como el contenedor será el mismo.