# Rol: Proveedor de Insumos

El rol de Proveedor de Insumos está dispuesto para ser utilizado por las entidades de orden nacional, departamental o municipal que generen insumos necesarios para realizar las actividades de levantamiento catastral, estas entidades son creadas en el Sistema y dependiendo del perfil que se les asigne (Administrador o Técnico) podrán tener a acceso a funcionalidades que les permitirán atender las solicitudes de insumos que se les realicen por parte del rol Gestor.

El rol Proveedor para esta versión del sistema tiene acceso al módulo de Gestión de usuarios y Gestión de Insumos, en donde podrá gestionar la creación de usuarios y áreas de trabajo asociados a su entidad; gestionar el cargue de los insumos que el Gestor le ha solicitado por cada municipio; crear y caracterizar insumos nuevos en el Sistema; atender las peticiones para la caracterización de nuevos insumos.

A continuación, se describen cada uno de los módulos que tiene acceso este rol.

## Gestión de Usuarios (perfil Administrador)

En este módulo el Proveedor de Insumos con perfil administrador puede listar y ver los datos de todos los usuarios asociados a su entidad, también puede registrar nuevos usuarios a través de un formulario y crear áreas de trabajo dentro de su entidad, a continuación, la descripción de estas funcionalidades.

### Listar Usuarios

Se despliega al dar clic en menú lateral izquierdo en la entrada “Administrador/Listar Usuarios“ el sistema lista los usuarios registrados para su entidad junto con sus datos como se ve en la imagen, se muestran los siguientes datos: área de trabajo, perfil, usuario, nombres, apellidos, correo asociado, fecha de creación del usuario y tiene disponible las opciones de editar y activar/desactivar el usuario.

<a class="" data-lightbox="Listar Usuarios" href="../_static/administrador/11-lista-usuarios-administrador.gif" title="Listar Usuarios" data-title="Listar Usuarios"><img src="../_static/administrador/11-lista-usuarios-administrador.gif" class="align-center" width="800px" alt="Listar Usuarios"/></a>

### Registrar Usuarios

Se despliega al dar clic en el menú lateral izquierdo en la entrada “Administrador/Registrar Usuarios“ en el formulario se diligencian los campos: Nombre, Apellido, nombre de usuario, correo electrónico que se asocia a la cuenta y en donde le llegarán todas las notificaciones del sistema así como la contraseña para ingresar, contraseña y confirmación de contraseña como se muestra en la imagen; en la parte inferior se muestran dos opciones: Técnico y Revisor; se debe escoger dependiendo a qué perfil se desee asociar el usuario y para el técnico se debe escoger el área o áreas de trabajo al que se asignará cogiéndolas de la caja de selección.

<a class="" data-lightbox="Registrar técnico" href="../_static/proveedor/1-registrar-tecnico.gif" title="Registrar técnico" data-title="Registrar técnico"><img src="../_static/proveedor/1-registrar-tecnico.gif" class="align-center" width="800px" alt="Registrar técnico"/></a>

<a class="" data-lightbox="Registrar técnico SNR" href="../_static/proveedor/2-registro-tecnico-snr.gif" title="Registrar técnico SNR" data-title="Registrar técnico SNR"><img src="../_static/proveedor/2-registro-tecnico-snr.gif" class="align-center" width="800px" alt="Registrar técnico SNR"/></a>

<a class="" data-lightbox="Registrar revisor SNR" href="../_static/proveedor/3-registro-revisor-snr.gif" title="Registrar revisor SNR" data-title="Registrar revisor SNR"><img src="../_static/proveedor/3-registro-revisor-snr.gif" class="align-center" width="800px" alt="Registrar revisor SNR"/></a>


### Crear Área de Trabajo

Esta funcionalidad le permite al Proveedor de insumos crear áreas de trabajo dentro de su entidad con el fin de organizar el cargue de insumos por temas y asignar usuarios técnicos a cada una de estas áreas, por ejemplo en la entidad IGAC como proveedor de insumos se tienen tres áreas de trabajo: área catastral, área de cartografía, área de agrología y los insumos a entregar se asocian a cada una de estas áreas según su temática en el momento de realizar la caracterización de dicho insumo, con esto se distribuye el trabajo de cargue de forma eficiente y a un usuario técnico solo le llegan solicitudes del área a la que fue asignado.

Para desplegar esta funcionalidad se da clic en el menú lateral izquierdo en la entrada “Administrador/Crear Área de trabajo“ en el formulario como se ve en la imagen, se diligencian los campos: Nombre y Descripción, con esto se da clic en el botón “Crear“ y se crea un área de trabajo y queda disponible para asignarle insumos y usuarios técnicos que realizaran el cargue de los insumos solicitados por el Gestor.

<a class="" data-lightbox="Crear Área de Trabajo" href="../_static/proveedor/7-crear-area-trabajo.gif" title="Crear Área de Trabajo" data-title="Crear Área de Trabajo"><img src="../_static/proveedor/7-crear-area-trabajo.gif" class="align-center" width="800px" alt="Crear Área de Trabajo"/></a>

En la parte inferior se verán las áreas de trabajo creadas y en la parte derecha de cada registro se tiene disponible las opciones de editar y eliminar como se ve en las imágenes.

<a class="" data-lightbox="Editar área de trabajo" href="../_static/proveedor/8-editar-area-trabajo.gif" title="Editar área de trabajo" data-title="Editar área de trabajo"><img src="../_static/proveedor/8-editar-area-trabajo.gif" class="align-center" width="800px" alt="Editar área de trabajo"/></a>

<a class="" data-lightbox="Eliminar área de trabajo" href="../_static/proveedor/9-eliminar-area-trabajo.gif" title="Eliminar área de trabajo" data-title="Eliminar área de trabajo"><img src="../_static/proveedor/9-eliminar-area-trabajo.gif" class="align-center" width="800px" alt="Eliminar área de trabajo"/></a>

## Gestión de Insumos

En este módulo el Proveedor de insumos con perfil administrador podrá realizar actividades asociadas a la gestión de insumos para ser entregadas al Gestor para el proceso de levantamiento catastral. Entre las funcionalidades que tiene disponibles están la atención de peticiones de creación de insumos, caracterización de insumos, solicitudes pendientes, solicitudes atendidas para la entrega de insumos. A continuación, se describe cada una de estas funcionalidades.

### Atención a peticiones de creación de insumos (perfil Administrador)

El Proveedor recibe peticiones por parte del Gestor para la creación y caracterización de un insumo que no están disponibles en el sistema, esto quiere decir que no se encuentra en el listado de la interfaz de la sección “**[solicitud de Insumos](https://swisstierrascolombia.github.io/st-docs/user-manual-doc/8-rol-gestor-catastral.html#solicitud-de-insumos)**“ del Gestor.

Para desplegar esta funcionalidad se da clic en el menú lateral izquierdo en la entrada “Insumos/Caracterización de Insumos“ y se ubica en la pestaña “Peticiones“ como se ve en la imagen. Se da clic en el botón “peticiones abiertas“ y el Proveedor puede revisar las peticiones y decidir si va o no a caracterizar el nuevo insumo solicitado y en el campo “Opciones“ da clic en el icono “Aceptar Petición“, diligencia el campo “Respuesta“ en la ventana emergente y da clic en la opción “Si“ para que a través de la interfaz se pueda notificar al Gestor su decisión de crearlo o no y explicarle si es el caso que el insumo ya está creado en el Sistema y como solicitarlo, en caso contrario la razón de porque no fue creado. Si decide crearlo pasa a la interfaz de caracterización de insumos para caracterizarlo y disponerlo en el Sistema.

<a class="" data-lightbox="Aceptar caracterizar insumo" href="../_static/proveedor/4-aceptar-caracterizar-insumo.gif" title="Aceptar caracterizar insumo" data-title="Aceptar caracterizar insumo"><img src="../_static/proveedor/4-aceptar-caracterizar-insumo.gif" class="align-center" width="800px" alt="Aceptar caracterizar insumo"/></a>

<a class="" data-lightbox="Peticiones cerradas" href="../_static/proveedor/6-peticiones-cerradas.gif" title="Peticiones cerradas" data-title="Peticiones cerradas"><img src="../_static/proveedor/6-peticiones-cerradas.gif" class="align-center" width="800px" alt="Peticiones cerradas"/></a>

### Caracterización de insumos

Esta funcionalidad le permite al Proveedor realizar la caracterización de un insumo y crearlo en el sistema para que esté disponible para ser solicitado por el Gestor. Para desplegar esta funcionalidad se da clic en el menú lateral izquierdo en la entrada “Insumos/Caracterización de Insumos“ como se ve en la imagen; en esta interfaz se despliega un formulario que cuenta con los siguientes campos par su diligenciamiento: **_Área_** se selecciona el área de trabajo al que el insumo pertenece; **_Nombre del insumo_**; **_Formatos del insumo_** se selecciona de la lista el formato o formatos que tendrá el insumo y que serán validados por el Sistema en el momento del cargue; **_Otros formatos_** se activa este campo con el botón ubicado a la derecha y se digita la extensión del formato (en caso de que no exista en la lista de formatos); **_Descripción_** se da una breve descripción del insumo con datos importantes como escala, fuentes, aplicación y actualización del mismo; **_Metadato_** se selecciona si requiere o no para solicitarlo en el momento del cargue, **_Modelo_** se selecciona si requiere o no para el caso de insumos que requieran un modelo para su validación por el Sistema.

<a class="" data-lightbox="Caracterización de insumos" href="../_static/proveedor/5-caracterizar-insumo.gif" title="Caracterización de insumos" data-title="Caracterización de insumos"><img src="../_static/proveedor/5-caracterizar-insumo.gif" class="align-center" width="800px" alt="Caracterización de insumos"/></a>

Una vez diligenciado el formulario se da clic en el botón “Crear Insumo“ y luego se da clic en aceptar al aviso de verificación que se despliega en la pantalla, ya con esto se caracteriza el insumo y aparece en la lista de la parte inferior de la interfaz y está disponible para ser solicitado por el Gestor.

En la parte inferior de la interfaz se muestra una lista con los insumos caracterizados por el Proveedor y asociados a su entidad, en la tabla tiene los datos del insumo y en parte derecha de la tabla tiene disponible tres botones: **Editar** si se desean actualizar los datos del insumo; **Eliminar** con el cual se elimina definitivamente el insumo del sistema, se debe confirmar esta opción en la ventana de confirmación y el insumo no debe estar relacionado en un proceso de solicitud o entrega. **Activar/Desactivar** con el cual el Proveedor decide si el insumo estará disponible en el sistema para ser solicitado por el Gestor, si un insumo es desactivado por el Proveedor este ya no estará disponible en la lista de la interfaz sección “solicitud de Insumos“ del Gestor, pero si este ya había sido solicitado o está en proceso de cargue, este se le seguirá mostrando a los demás usuarios del Sistema.

### Solicitudes pendientes (perfil Técnico)

Una vez ha ingresado correctamente al Sistema el usuario Proveedor con perfil técnico se le despliega una bandeja de entrada como se ve en la imagen, en donde se le informa el número de solicitudes que tiene en el Sistema, al dar clic en el texto “Ver detalles“ o en el icono de flecha se le redirigirá a la entrada de menú “Solicitudes Pendientes“ para que el usuario pueda atenderlas y cargar al Sistema los insumos solicitados. Una vez atendida una de las solicitudes el contador de la bandeja de entrada se actualizará y con ello le indicará el total de solicitudes pendientes cada vez que inicie sesión o vaya a la página principal de la interfaz.

Si se desea ingresar directamente, se despliega al dar clic en el menú lateral izquierdo en la entrada “Insumos/Solicitudes Pendientes“ y la interfaz como se ve en la imagen, se cargará una lista con las solicitudes de insumos por atender con los siguientes campos: Número de solicitud, Departamento, Municipio, Gestor que solicita, Fecha de Solicitud, Fecha Límite para cargar los insumos solicitados. En la parte superior se cuenta con un buscador para ayudar al usuario a filtrar la solicitud de su interés.

<a class="" data-lightbox="Solicitudes pendientes (perfil Técnico)" href="../_static/tecnico/1-solicitudes-pendientes.gif" title="Solicitudes pendientes (perfil Técnico)" data-title="Solicitudes pendientes (perfil Técnico)"><img src="../_static/tecnico/1-solicitudes-pendientes.gif" class="align-center" width="800px" alt="Solicitudes pendientes (perfil Técnico)"/></a>

Para ingresar a cada una de las solicitudes el usuario da clic en el botón “Ver“ en la parte derecha del registro e ingresa a la interfaz como se ve en la imagen en donde verá el insumo o insumos (si son de la misma área de trabajo) solicitados para un municipio específico con los siguientes campos de información: Departamento, Municipio, Gestor, Número de Solicitud, Fecha de Solicitud, Fecha Límite y debajo de cada registro la Observación que envía el Gestor. Utilizando la caja de selección “Tipo“ (1) el usuario escoge entre las opciones Archivo (carga un archivo en formato ZIP), URL (se proporciona una URL donde se dispone del insumo) y No Disponible (si no se cuenta con el insumo). Luego de seleccionar la opción Archivo se activa la caja (2) donde se hará el cargue del insumo en formato de compresión “Zip” y se diligencia el campo observación (3) que es obligatorio para cada uno de los registros, después de esto el botón “Enviar“ se le habilita (4) para que el usuario de clic y cargue el insumo al Sistema, esto debe hacerse para cada uno de los registros de la solicitud.

<a class="" data-lightbox="Interfaz cargue del insumo" href="../_static/tecnico/../interfaz-cargue-insumo.jpg" title="Interfaz cargue del insumo" data-title="Interfaz cargue del insumo"><img src="../_static/tecnico/../interfaz-cargue-insumo.jpg" class="align-center" width="800px" alt="Interfaz cargue del insumo"/><center><small>Interfaz de cargue de insumos por el Proveedor</small></center></a>

<a class="" data-lightbox="Entrega insumo archivo" href="../_static/tecnico/2.entrega-insumo-archivo.gif" title="Entrega insumo archivo" data-title="Entrega insumo archivo"><img src="../_static/tecnico/2.entrega-insumo-archivo.gif" class="align-center" width="800px" alt="Entrega insumo archivo"/></a>

En el momento de cargue del insumo el Sistema verifica el formato del archivo a cargar y debe corresponder con el definido en la caracterización del insumo y que su tamaño no supere los 10 MB, si el insumo es cargado en formato “Zip” verifica internamente que corresponda con el formato especificado, si no es así le mostrar una advertencia y le pedirá cargarlo de nuevo. Para el caso de los archivos que necesitan validación contra alguno de los submodelos LADM-COL la interfaz muestra una etiqueta al lado derecho informando su estado “Validando” (5) como se ve en la imagen, el sistema permite que el usuario pueda navegar en otras interfaces y adelante otras tareas mientras valida los archivos y luego pueda volver al registro de cargue de insumos y verificar su resultado; si el insumo no logra ser validado correctamente la etiqueta cambia a estado “Rechazado” (6) y el usuario debe volver a cargar un archivo y esperar a que se valide de nuevo, si la validación es exitosa la etiqueta se actualiza a “Insumo Cargado” (7) y en la parte inferior del registro muestra que usuario realizó el cargue del insumo y luego puede proceder a cerrar la solicitud (8) y con ello realizar la entrega al Gestor.

<a class="" data-lightbox="Estados de cargue" href="../_static/estados-cargue.jpg" title="Estados de cargue" data-title="Estados de cargue"><img src="../_static/estados-cargue.jpg" class="align-center" width="800px" alt="Estados de cargue"/><center><small>Validación de archivos XTF en el cargue de insumos</small></center></a>

<a class="" data-lightbox="Entrega del insumo URL" href="../_static/tecnico/3.entrega-insumo-url.gif" title="Entrega del insumo URL" data-title="Entrega del insumo URL"><img src="../_static/tecnico/3.entrega-insumo-url.gif" class="align-center" width="800px" alt="Entrega del insumo URL"/></a>

<a class="" data-lightbox="Entrega del insumo Justificación" href="../_static/tecnico/4.entrega-insumo-justificacion.gif" title="Entrega del insumo Justificación" data-title="Entrega del insumo Justificación"><img src="../_static/tecnico/4.entrega-insumo-justificacion.gif" class="align-center" width="800px" alt="Entrega del insumo Justificación"/></a>

Cabe notar que los insumos no son entregados ni dispuestos al Gestor si la solicitud no se cierra, ya que el usuario puede salir de esta interfaz y volver a verla en la sección “Solicitudes Pendientes“. El sistema permite que el cargue de los insumos de una misma solicitud pueda realizarse por diferentes usuarios que tengan el mismo perfil y estén asignados a la misma área de trabajo.

<a class="" data-lightbox="Entrega-Cerrar solicitud" href="../_static/tecnico/5-entrega-cerrar-solicitud.gif" title="Entrega-Cerrar solicitud" data-title="Entrega-Cerrar solicitud"><img src="../_static/tecnico/5-entrega-cerrar-solicitud.gif" class="align-center" width="800px" alt="Entrega-Cerrar solicitud"/></a>

**A tener en cuenta**: Los insumos que se carguen al Sistema de datos catastrales, registrales o ANT en el submodelo de insumos LADM-COL que se almacenan en un formato de intercambio XTF, una vez cargados, se iniciara un proceso de validación contra el submodelo de insumos LADM-COL para verificar que los datos entregados estén correctos bajo el estándar del modelo, por ello este proceso se ejecuta en segundo plano y puede tardar un tiempo dependiendo del tamaño de los archivos, una vez validado enviara una notificación vía email al usuario para informarle sobre el resultado de la validación.

<a class="" data-lightbox="Solicitudes atendidas" href="../_static/tecnico/6-solicitudes-atendidas.gif" title="Solicitudes atendidas" data-title="Solicitudes atendidas"><img src="../_static/tecnico/6-solicitudes-atendidas.gif" class="align-center" width="800px" alt="Solicitudes atendidas"/></a>

<a class="" data-lightbox="Flujo completo entrega del insumo" href="../_static/tecnico/7-flujo-completo-entrega-insumo.gif" title="Flujo completo entrega del insumo" data-title="Flujo completo entrega del insumo"><img src="../_static/tecnico/7-flujo-completo-entrega-insumo.gif" class="align-center" width="800px" alt="Flujo completo entrega del insumo"/></a>

<a class="" data-lightbox="Validación del XTF" href="../_static/tecnico/8-validando-xtf.gif" title="Validación del XTF" data-title="Validación del XTF"><img src="../_static/tecnico/8-validando-xtf.gif" class="align-center" width="800px" alt="Validación del XTF"/></a>

### Cargue de insumo Catastral a través de la ETL Cobol-SNC (perfil Técnico)

Para el caso de los insumos solicitados al proveedor de insumo del área de trabajo Catastral (1) como se mostró en la sección “**[Administración de Usuarios](https://swisstierrascolombia.github.io/st-docs/user-manual-doc/3-gestion-usuarios.html#administracion-de-usuarios)**“, se tiene el insumo “Datos catastrales en modelo de insumos” que son los datos catastrales de los predios del municipio que son necesarios entregar al Operador para el inicio de sus actividades de levantamiento Catastral, este insumo a su vez se integra con el de “Datos registrales en modelo de insumos“ que provee la SNR desde al área de trabajo OTI (2), y juntos forman parte del modelo de aplicación LADM-COL de levantamiento catastral v1.0. Para ello el proveedor de insumo del área de trabajo catastral que para la mayoría de los municipios del país es el IGAC lo debe generar a partir de sus bases de datos en sistema Cobol-SNC y la SNR de su sistema de información registral.

<a class="" data-lightbox="Áreas de trabajo Catastral y Registral" href="../_static/trabajo-catastral-registrar.jpg" title="Áreas de trabajo Catastral y Registral" data-title="Áreas de trabajo Catastral y Registral"><img src="../_static/trabajo-catastral-registrar.jpg" class="align-center" width="800px" alt="Áreas de trabajo Catastral y Registral"/><center><small>Áreas de trabajo Catastral y Registral</small></center></a>

El Sistema permite que después de realizada una solicitud del insumo “Datos catastrales en modelo de insumos” por parte de un Gestor al proveedor de insumos IGAC, el proveedor pueda a través de una función ETL (Extraer, transformar y “Load” Cargar) consultar y extraer los datos de su sistema de información Cobol o SNC con la ayuda del plugin del “Asistente LADM-COL”, estos son extraídos y almacenados en un archivo de intercambio XTF para ser cargados en la interfaz del Sistema de Transición.

El Sistema una vez recibe la solicitud del insumo “Datos catastrales en modelo de insumos” crea una tarea con sus respectivas credenciales para que el usuario con perfil técnico asociado al área de trabajo Catastral del Proveedor de insumos IGAC pueda autenticarse desde la interfaz del “Asistente LADM-COL” del programa QGIS (herramienta desktop) como se muestra en la imagen e inicie la ejecución de la función ETL y genera el insumo para ser cargado desde la herramienta desktop o directamente en la interfaz de la solicitud del Sistema de Transición.

Para mayor detalle refiérase a la sección “ETL Cobol-SNC” en el **<a href="https://swisstierrascolombia.github.io/Asistente-LADM-COL/" target="_blank">Asistente LADM-COL</a>**.

<a class="" data-lightbox="Sistema de transición" href="../_static/asistente/transitional_system.gif" title="Sistema de transición" data-title="Sistema de transición"><img src="../_static/asistente/transitional_system.gif" class="align-center" width="800px" alt="Sistema de transición"/></a>

### Caso especial SNR (Revisión y cargue de adjuntos PDF “Cabida y Linderos“) (*Funcionalidad en desarrollo*)

Para el caso de la SNR esta cuenta con dos tipos de usuario: Técnico de la OTI y Revisor PDF, esto debido a que el insumo que esta entidad carga: “Datos registrales en submodelo de insumos v.1.0” en formato XTF debe ser cargado por el “Técnico” y luego revisado por “Revisor PDF” con el fin de adjuntar todos los documentos de descripción de cabida y linderos de cada registro del archivo XTF. A continuación, se muestra de forma general esta funcionalidad.

<a class="" data-lightbox="Entrega a revisión" href="../_static/tecnico/9-entregar-a-revision.gif" title="Entrega a revisión" data-title="Entrega a revisión"><img src="../_static/tecnico/9-entregar-a-revision.gif" class="align-center" width="800px" alt="Entrega a revisión"/></a>

### Solicitudes atendidas (perfil Técnico)

Después de haber cargado los insumos solicitados por parte del Gestor y haber cerrado la solicitud estas pasan a listarse en esta entrada de menú que se despliega al dar clic en el menú lateral izquierdo en la entrada “Insumos/Solicitudes Atendidas“ en donde por medio de una lista como se ve en la imagen, se muestran cada una de ellas con los siguientes campos: Número de solicitud, Departamento, Municipio, Gestor, Fecha de solicitud , Fecha Límite y en el icono “ver“ al dar clic muestra el detalle de cada una de las solicitudes atendidas. En esta interfaz se tiene un buscador en la parte superior con el fin de ayudar al usuario a encontrar una solicitud de forma más rápida, teniendo en cuenta que en este listado pueden aparecer muchas solicitudes, solo es necesario colocar alguna palabra clave con referencia a la solicitud a buscar y el buscador la filtra y se la mostrará al usuario.

<a class="" data-lightbox="Entrega sin revisión" href="../_static/revisor/1-entregar-sin-revision.gif" title="Entrega sin revisión" data-title="Entrega sin revisión"><img src="../_static/revisor/1-entregar-sin-revision.gif" class="align-center" width="800px" alt="Entrega sin revisión"/></a>

En esta interfaz se muestra el detalle de una solicitud atendida en donde se listan los insumos entregados con los datos de la solicitud y con los siguientes campos de la entrega: Nombre del insumo entregado, Estado de la entrega, Observación de la entrega, Fecha de cargue del insumo y el nombre del usuario que lo cargo al Sistema. En la parte superior izquierda hay un icono de “Volver“ con el que el usuario retorna a la lista de solicitudes atendidas.