# Microservicio st-microservice-oauth

Permite generar los tokens JWT de sesión a través del protocolo OAuth2.

Para realizar el despliegue se deben seguir las siguientes indicaciones:

## Configurar propiedades

En el archivo ***st-microservice-oauth.yml*** se encuentran las propiedades de configuración del microservicio. Se pueden modificar las siguientes propiedades:

### URL Servidor Eureka

Si se requiere cambiar la url del servidor de descubrimiento eureka, se debe modificar la siguiente propiedad:

```yaml
eureka:
  client:
    serviceUrl:
      defaultZone: http://st-eureka-server:8762/eureka
```

### Credenciales OAUTH

El sistema de transición usa el protocolo OAuth2 para la generación de tokens basados en JWT. Actualmente existen dos clientes que hacen uso de login que son: el sitio web del sistema de transición y el Asistente-LADM-COL. Ambos clientes tienen propiedades diferentes las cuales pueden ser modificadas en el archivo ***application.yml***:

> **Nota** 1: Sólo modificar el cliente del sitio web, ya que si se modifica las propiedades del cliente del Asistente-LADM-COL esté no podrá acceder al sistema.
>
> **Nota 2:**  Las propiedades **id** y **secret** tendrán que ser configuradas al momento de desplegar el sitio web del sistema de transición. 

```yaml
oauth:
  clients:
    site:
      id: st-web-sdVa1NXw
      secret : hKbceN89
      timeAccessToken: 28800
      timeRefreshToken: 28800
  jwt:
    key: U09V3T12qppx3hPu6qKV
```

## Clonar repositorio

Se debe clonar el repositorio [**st-microservice-oauth**](https://github.com/SwissTierrasColombia/st-microservice-oauth) almacenado en github y posteriormente generar el jar del proyecto a través de maven.

```sh
$ git clone https://github.com/SwissTierrasColombia/st-microservice-oauth.git
$ cd st-microservice-oauth && git checkout master
$ mvn clean package -DskipTests
```

## Crear imagen docker

Se debe crear la imagen docker a partir del archivo Dockerfile que se encuentra en el repositorio, esta imagen requiere que se le pasen los siguientes argumentos:

- **XMX**: Límite en RAM que el jar utilizará.
- **PROFILE**: Perfil o ambiente en el cual se ejecutará el jar. En producción se debe usar el perfil production.
- **CLOUD_CONFIG**: Url del servidor de configuración.

```sh
$ docker build -t st-microservice-oauth:lynx --build-arg XMX=<xmx> --build-arg PROFILE=<perfil> --build-arg CLOUD_CONFIG=<url-cloud-config> .
```

Por ejemplo:

```sh
$ docker build -t st-microservice-oauth:lynx --build-arg XMX=1024m --build-arg PROFILE=production --build-arg CLOUD_CONFIG=http://st-config-server:8890 .
```

## Ejecutar el contenedor

Se debe ejecutar el contenedor a partir de la imagen creada asignando un límite de memoria RAM y la red docker previamente creada.

```sh
$ docker run -P -t --network <nombre-red-docker> -m <ram>  -d st-microservice-oauth:lynx
```

Por ejemplo:

```sh
$ docker run -P -t --network st -m 500M  -d st-microservice-oauth:lynx
```