# RabbitMQ

El sistema de transición requiere utilizar un sistema *message queue* para la comunicación entre microservicios. Se ha optado por utilizar [**RabbitMQ**](https://www.rabbitmq.com/):

```sh
 $ docker run -d -p <puerto-servidor>:5672 -p <puerto-dashboard>:15672 --name <nombre-instancia> --network <nombre-red-docker> -m <ram> rabbitmq:3-management
```

Por ejemplo:

```sh
 $ docker run -d -p 5672:5672 -p 15672:15672 --name st-rabbit --network st -m 1024M rabbitmq:3-management
```

> **Nota:** En la imagen de docker se puede configurar usuario y contraseña para la instancia del servidor.

