# Microservicio st-microservice-ili

Este microservicio permite realizar operaciones con archivos xtf.

Para realizar el despliegue se deben seguir las siguientes indicaciones:

## DDL

En el archivo ***resources/database/ddl/st-microservice-ili.sql*** se encuentra el script para crear el DDL que necesita el microservicio.

Se debe descargar y ejecutar el script:

```sh
$ psql -h <host> -p <puerto> -U <usuario> -d <nombre-base-datos> -f st-microservice-ili.sql
```

Por ejemplo:

```sh
$ psql -h localhost -p 5432 -U postgres -d sistema-transicion -f st-microservice-ili.sql
```

## Configurar directorio de modelos ILI

El microservicio necesita definir un directorio en el cual estarán almacenados los archivos ili utilizados para realizar operaciones con archivos xtf.

```sh
$ mkdir /opt/st/ili/models
```

En este directorio se crearán sub-directorios con la finalidad de separar los archivo ili por versiones. La versión que el microservicio tiene configurada actualmente es **"3.0"** por tal motivo se debe crear un sub-directorio:

```sh
$ cd /opt/st/ili/models && mkdir 3.0
```

En este espacio se deberán almacenarán los archivos ili ubicados en ***resources/ili/models/3.0***

## Configurar propiedades

En el archivo ***st-microservice-ili.yml*** se encuentran las propiedades de configuración del microservicio. Se pueden modificar las siguientes propiedades:

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

### Directorio de modelos

El microservicio requiere definir un directorio en el cual estarán alojados los archivos ili. Si se requiere modificar este director, se deberá modificar la siguiente propiedad:

```yaml
iliProcesses:
  modelsDirectory: /opt/st/ili/models/
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

Se debe clonar el repositorio [**st-microservice-ili**](https://github.com/SwissTierrasColombia/st-microservice-ili) almacenado en github y posteriormente generar el jar del proyecto a través de gradle.

```sh
$ git clone https://github.com/SwissTierrasColombia/st-microservice-ili.git
$ cd st-microservice-ili && git checkout master
$ gradle build
```

## Crear imagen docker

Se debe crear la imagen docker a partir del archivo Dockerfile que se encuentra en el repositorio, esta imagen requiere que se le pasen los siguientes argumentos:

- **XMX**: Límite en RAM que el jar utilizará.
- **PROFILE**: Perfil o ambiente en el cual se ejecutará el jar. En producción se debe usar el perfil production.
- **CLOUD_CONFIG**: Url del servidor de configuración.

```sh
$ docker build -t st-microservice-ili:lynx --build-arg XMX=<ram> --build-arg PROFILE=<perfil> --build-arg CLOUD_CONFIG=<url-cloud-config> .
```

Por ejemplo:

```sh
$ docker build -t st-microservice-ili:lynx --build-arg XMX=7168m --build-arg PROFILE=production --build-arg CLOUD_CONFIG=http://st-config-server:8890 .
```

## Ejecutar el contenedor

Se debe ejecutar el contenedor a partir de la imagen creada asignando un límite de memoria RAM, la red docker previamente creada y dos volúmenes:

- Volumen que defina el espacio donde quedarán almacenados tanto los archivos finales y temporales del sistema.
- Volumen que defina el lugar donde están almacenados los archivos ili.

```sh
$ docker run -P -t --network <nombre-red-docker> -m <ram> -d -v <directorio-repositorio-maquina-local>:<directorio-repositorio-contenedor> -v <directorio-modelos-maquina-local>:<directorio-modelos-contenedor> st-microservice-ili:lynx
```

Por ejemplo:

```sh
$ docker run -P -t --network st -m 8192M -d -v /opt/st/repositorio:/opt/st/repositorio -v /opt/st/ili/models/:/opt/st/ili/models/ st-microservice-ili:lynx
```

> **Nota:** En este caso tanto el directorio host como el contenedor será el mismo.