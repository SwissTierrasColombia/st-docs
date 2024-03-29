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

<a class="" data-lightbox="Descripción de la interfaz" href="../_static/4-acerca-de.gif" title="Descripción de la interfaz" data-title="Descripción de la interfaz"><img src="../_static/root/4-acerca-de.gif" class="align-center" width="800px" alt="Descripción de la interfaz"/></a>

La interfaz de cada funcionalidad cuenta con los siguientes elementos como se muestra en la imagen:

- Selector de búsqueda
- Tabla de resultados
- Cajas de ingreso de datos
- Iconos de Opciones para ejecución de acciones.

<a class="" data-lightbox="Interfaz de funcionalidad del Sistema" href="../_static/interfaz-funcionalidad.jpg" title="Interfaz de funcionalidad del Sistema" data-title="Interfaz de funcionalidad del Sistema"><img src="../_static/interfaz-funcionalidad.jpg" class="align-center" width="800px" alt="Interfaz de funcionalidad del Sistema"/><center><small>Interfaz de funcionalidad del Sistema</small></center></a>

## Funcionalidades Básicas (Aplica para todos los roles)

### Autenticación

Para ingresar al Sistema se debe digitar la URL <a href="http://multiproposito.igac.gov.co:8181/login" target="_blank">http://multiproposito.igac.gov.co:8181/login</a> y en el campo “Nombre de usuario“ digitar el usuario asignado y en el campo “Contraseña“ digitar la contraseña. Después de esto se dará ingreso al Sistema y se cargaran los menús correspondientes al rol definido para el usuario.

<a class="" data-lightbox="Autenticación" href="../_static/root/1-login.gif" title="Autenticación" data-title="Autenticación"><img src="../_static/root/1-login.gif" class="align-center" width="800px" alt="Autenticación"/></a>

### Información de usuario

Una vez se ha ingresado, en la parte superior derecha se da clic en la flecha para desplegar las opciones de usuario, en donde se tiene la opción “Perfil“ como se ve en la imagen, al dar clic se tiene acceso al formulario de datos básicos del usuario.

<a class="" data-lightbox="Información de usuario" href="../_static/administrador/12-actualizar-info-usuario.gif" title="Información de usuario" data-title="Información de usuario"><img src="../_static/administrador/12-actualizar-info-usuario.gif" class="align-center" width="800px" alt="Información de usuario"/></a>

### Cambiar contraseña

En la parte inferior del formulario de datos básicos del usuario se puede actualizar la contraseña de ingreso al Sistema, se debe ingresar la contraseña actual y luego la nueva contraseña y dar clic en “Cambiar contraseña“

<a class="" data-lightbox="Cambiar contraseña" href="../_static/root/5-cambiar-password.gif" title="Cambiar contraseña" data-title="Cambiar contraseña"><img src="../_static/root/5-cambiar-password.gif" class="align-center" width="800px" alt="Cambiar contraseña"/></a>

### Cerrar sesión

En la parte superior derecha se da clic en la flecha para desplegar las opciones de usuario y se da clic en “Cerrar sesión“ con esto se termina la sesión del usuario y lo regresa a la pantalla de autenticación.

<a class="" data-lightbox="Cambiar contraseña" href="../_static/root/6-cerrar-login.gif" title="Cambiar contraseña" data-title="Cambiar contraseña"><img src="../_static/root/6-cerrar-login.gif" class="align-center" width="800px" alt="Cambiar contraseña"/></a>