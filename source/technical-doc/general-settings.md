# Configuraciones Generales

A continuación se explica los requisitos generales o transversales que se requieren configurar:

## Docker

Se debe crear una red en docker la cual alojará los diferentes microservicios.

```sh
$ docker network create <nombre-de-la-red>
```

Por ejemplo:

```sh
$ docker network create st
```

## Espacio almacenamiento compartido

El sistema de transición requiere de dos directorios para la gestión de documentos cargados al sistema:

- **Directorio Temporal**: Este directorio es usado para mantener archivos de forma temporal, que posteriormente serán eliminados.

- **Directorio Final**: Este directorio almacenará los archivos que requieran persistencia permanente en el sistema.

A partir de esto se requiere definir dos espacios de almacenamiento, por ejemplo:

```sh
$ mkdir /opt/st/repositorio/finales
$ mkdir /opt/st/repositorio/temporales
```

Una vez definidos los espacios de almacenamiento se requiere modificar las siguientes propiedades en el archivo ***application.yml*** del [repositorio de configuración](st-configuration-properties.md):

```yaml
st:
  temporalDirectory: /opt/st/repositorio/temporales
  filesDirectory: /opt/st/repositorio/finales
```

> **Nota**: Es importante destacar que al utilizar docker, esta configuración de directorios aplicará para la maquina host como para el contenedor. 

