# Base de datos

El sistema de transición hace uso de dos instancias de bases de datos:

- **Principal**: Se crea la base de datos principal y de negocio del sistema.

- **Integraciones**: Se crean bases de datos temporales (usadas en procesos de integraciones catastro-registro).

  > **Nota**: Es importante resaltar que ambas bases de datos usan el motor **PostgresSQL** y la extensión **postgis**.

## Base de datos principal

El sistema se compone de diferentes microservicios donde cada uno de ellos hace uso de una base de datos. A partir de esto existen dos posibilidades:

- Crear una base de datos única para que todos los microservicios que requieran persistir información la utilicen.
- Crear una base de datos para cada uno de los microservicios que requieran persistir información.

Se optará por usar la primera opción:

```sh
$ docker run --name <nombre-instancia> -p <puerto-base-datos>:5432 -e POSTGRES_PASSWORD=<contraseña-base-datos> -e POSTGRES_DB=<nombre-base-datos> -e POSTGRES_USER=<usuario-base-datos> -m <ram> -d mdillon/postgis
```

Por ejemplo:

```sh
$ docker run --name st-postgres -p 5432:5432 -e POSTGRES_PASSWORD=123456 -e POSTGRES_DB=sistema-transicion -e POSTGRES_USER=postgres -m 2048M -d mdillon/postgis
```

## Base de datos integraciones

Se crea la instancia:

```sh
$ docker run --name <nombre-instancia> -p <puerto-base-datos>:5432 -e POSTGRES_PASSWORD=<contraseña-base-datos> -e POSTGRES_USER=<usuario-base-datos> -m <ram> -d mdillon/postgis
```

Por ejemplo:

```sh
$ docker run --name st-ili-postgres -p 54322:5432 -e POSTGRES_PASSWORD=123456 -e POSTGRES_USER=postgres -m 2048M -d mdillon/postgis
```

