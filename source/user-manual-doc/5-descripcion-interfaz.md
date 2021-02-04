# Descripción de la interfaz

La interfaz del Sistema se compone básicamente de una página de autenticación y otra página que es el contenedor de los módulos y las funcionalidades del Sistema de Transición. A continuación, en la imagen se explica cada componente de la interfaz.

Compuesta por las siguientes secciones:
1. La dirección web donde se encuentra alojado el Sistema, esta URL la proveerá la entidad encargada de administrar el Sistema.
2. Etiqueta de identificación de usuario, compuesto por el nombre de la entidad, nombre del usuario, perfil y rol.
3. Barra lateral que contiene el menú de módulos y funcionalidades del Sistema.
4. Módulos del Sistema: Gestión del municipio, Insumos, Administrador.
5. Funcionalidades asociadas a cada módulo del Sistema.
6. Página de presentación del Sistema (Acerca de...).
7. Función de contraer barra de menú lateral.
8. Bandeja de entrada con contador para tareas pendientes del usuario.
9. Banner de imágenes alusivas al levantamiento catastral en Colombia.

![Acerca de](images/root/4-acerca-de.gif)

La interfaz de cada funcionalidad cuenta con los siguientes elementos como se muestra en la imagen:

- Selector de búsqueda
- Tabla de resultados
- Cajas de ingreso de datos
- Iconos de Opciones para ejecución de acciones.

![roles](images/interfaz-funcionalidad.jpg)<center><small>Interfaz de funcionalidad del Sistema</small></center>
## Funcionalidades Básicas (Aplica para todos los roles)

### Autenticación

Para ingresar al Sistema se debe digitar la URL [http://multiproposito.igac.gov.co:8181/login](http://multiproposito.igac.gov.co:8181/login)  y en el campo “Nombre de usuario“ digitar el usuario asignado y en el campo “Contraseña“ digitar la contraseña. Después de esto se dará ingreso al Sistema y se cargaran los menús correspondientes al rol definido para el usuario.

![Autenticación](images/root/1-login.gif)

### Información de usuario

Una vez se ha ingresado, en la parte superior derecha se da clic en la flecha para desplegar las opciones de usuario, en donde se tiene la opción “Perfil“ como se ve en la imagen, al dar clic se tiene acceso al formulario de datos básicos del usuario.

![Información de usuario](images/administrador/12-actualizar-info-usuario.gif)

### Cambiar contraseña

En la parte inferior del formulario de datos básicos del usuario se puede actualizar la contraseña de ingreso al Sistema, se debe ingresar la contraseña actual y luego la nueva contraseña y dar clic en “Cambiar contraseña“

![Cambiar contraseña](images/root/5-cambiar-password.gif)

### Cerrar sesión

En la parte superior derecha se da clic en la flecha para desplegar las opciones de usuario y se da clic en “Cerrar sesión“ con esto se termina la sesión del usuario y lo regresa a la pantalla de autenticación.

![Cerrar sesión](images/root/6-cerrar-login.gif)