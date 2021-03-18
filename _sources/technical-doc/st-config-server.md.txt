# Microservicio st-config-server

Permite gestionar a través de un repositorio git las configuraciones de cada uno de los microservicios.

Para realizar el despliegue se deben seguir las siguientes indicaciones:

## Clonar repositorio

Se debe clonar el repositorio [**st-config-server**](https://github.com/SwissTierrasColombia/st-config-server) almacenado en github y posteriormente generar el jar del proyecto a través de maven.

```sh
$ git clone https://github.com/SwissTierrasColombia/st-config-server.git
$ cd st-config-server && git checkout master
$ mvn clean package
```

## Crear imagen docker

Se debe crear la imagen docker a partir del archivo Dockerfile que se encuentra en el repositorio, esta imagen requiere que se le pasen los siguientes argumentos:

- **HOST**: Url donde se encuentra el repositorio.
- **USERNAME**: Usuario para acceder al repositorio.
- **PASSWORD**: Contraseña para acceder al repositorio.
- **XMX**: Límite en RAM que el jar utilizará.
- **PROFILE**: Perfil o ambiente en el cual se ejecutará el jar. En producción se debe usar el perfil production.

```sh
$ docker build -t st-config-server:lynx --build-arg HOST=<host-repositorio> --build-arg USERNAME=<usuario-repositorio> --build-arg PASSWORD=<contraseña-repositorio> --build-arg XMX=<xmx> --build-arg PROFILE=<perfil> --no-cache .
```

Por ejemplo:

```sh
$ docker build -t st-config-server:lynx --build-arg HOST=https://git-codecommit.us-east-2.amazonaws.com/v1/repos/st-configuration-properties.git --build-arg USERNAME=ti_agencia-at --build-arg PASSWORD=123456 --build-arg XMX=1024m --build-arg PROFILE=production --no-cache .
```

## Ejecutar el contenedor

Se debe ejecutar el contenedor a partir de la imagen creada asignando un límite de memoria RAM, la red docker previamente creada y un puerto de acceso.

```sh
$ docker run -p <puerto>:8890 --name st-config-server --network <nombre-red-docker> -m <ram> -d st-config-server:lynx
```

Por ejemplo:

```sh
$ docker run -p 8890:8890 --name st-config-server --network st -m 500M -d st-config-server:lynx
```

