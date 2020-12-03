# Servidor st-site-web

## Requerimientos

### Requerimientos de hardware

- **4** GB de RAM **mínimo**
- **12** GB de disco duro **mínimo**

### Requerimientos de software

- git **2.20.1**
- nodejs **> 10.15.0** 
- angular **10**
- nginx **1.14.2**

## Configuración

#### Clonar el repositorio

Se debe clonar el repositorio **st-site-web** almacenado en el github de la Agencia.

```sh
git clone https://github.com/SwissTierrasColombia/st-site-web.git
```

#### Acceder al repositorio

Es importante ubicarse en la rama master ya que es la versión de producción.

```bash
cd st-site-web && git checkout master
```

#### Configurar variables de entorno

dentro del directorio ***st-site-web/src/environments***  Encontrara dos templaates para la creación de los environments, uno para producción y el otro para desarrollo, debemos crear dos archivos con los siguientes nombres **environment.prod.ts** el cual es donde configuramos las variables de producción y otro **environment.ts** el cual es para configurar las variables de desarrollo, de esta forma.

```bash
mkdir st-site-web/src/environments/environment.prod.ts
mkdir st-site-web/src/environments/environment.ts
# Para environment.prod.ts (Producción)
const apiBaseUrl = 'http://HOST:PORT'; # Dirrección IP backend
export const environment = {
  production: true,
  apiBaseUrl, # Se usa esta variable de entorno para servicios que no utilizan el prefijo api
  apiBaseUrlPrefix: apiBaseUrl + '/api', # Variable para los servicios generales
  nameTokenSession: 'access_token_st', # Nombre del token en la sesión del usuario
  clientUsername: 'st-web-sdVa1NXw', # Nombre del backend para conectarse
  clientPassword: 'hKbceN89', # password del backend para conectarse
  sizeFile: 190, # tamaño de archivo comprimido permitido para subir al sistema
  sizeFileUnZip: 10 # tamaño de archivo sin comprimir permitodo para subir al sistema
};

# Para environment.ts (Desarrollo)
const apiBaseUrl = 'http://HOST:PORT'; # Dirrección IP backend
export const environment = {
  production: true,
  apiBaseUrl, # Se usa esta variable de entorno para servicios que no utilizan el prefijo api
  apiBaseUrlPrefix: apiBaseUrl + '/api', # Variable para los servicios generales
  nameTokenSession: 'access_token_st', # Nombre del token en la sesión del usuario
  clientUsername: 'st-web-develop-dvKDKgQr', # Nombre del backend para conectarse
  clientPassword: '12345', # password del backend para conectarse
  sizeFile: 190, # tamaño de archivo comprimido permitido para subir al sistema
  sizeFileUnZip: 10 # tamaño de archivo sin comprimir permitodo para subir al sistema
};

```

#### Generar compilación

Primero se instala las dependencias del proyecto con nodejs y luego se crea la compilación con Angular.

```bash
npm install
ng build --prod
```
Tener en cuenta que se debe tener los environmets configurados dentro del frontend

### Configuración Nginx

Este servidor sirve para el despliegue del frontend por la IP especifica del servidor:
- Habilitamos el servidor Nginx
    ```bash 
    sudo systemctl enable nginx
    ```
- Creamos el directorio donde se almacenará la compilación del Frontend con los siguientes permisos
    ```bash 
    sudo mkdir -p /var/www/st/html
    sudo chown -R $USER:$USER /var/www/st/html
    sudo chmod -R 755 /var/www/st
    ```
- Creamos un enlace simbólico del directorio en los sitios habilitados de nginx
    ```bash 
    sudo ln -s /etc/nginx/sites-available/st /etc/nginx/sites-enabled/
    ```
- Ingresamos al archivo de configuraciones de Nginx en la ruta /etc/nginx/nginx.conf
  - descomentareamos la variable 
    ```sh 
    server_names_hash_bucket_size 64;
    ```
- Creamos el archivo de los sitios habilitados para nuestro servidor:
  - Reemplazamos las variables $PUERTO_SERVIDOR Y $IP_SERVIDOR, por la del servidor a configurar. 
    ```sh
        server {
        listen $PUERTO_SERVIDOR;
        listen [::]: $PUERTO_SERVIDOR;

        root /var/www/st/html/dist/st-site-web;
        index index.html index.htm index.nginx-debian.html;

        server_name $IP_SERVEVIDOR;

        location / {
                try_files $uri $uri/ /index.html;
        }
    }
    ```
 - Comprobamos la sintaxis de los archivos configurados y reiniciamos el servidor nginx
    ```bash 
    sudo nginx -t
    sudo systemctl restart nginx
    ```


#### Desplegar Frontend

Se debe copiar el directorio "dist" generado en el proyecto st-site-web en la carpeta de sitios activos de Nginx

```bash
cp -R dist /var/www/st/html/
```
