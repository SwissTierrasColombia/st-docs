# Rol: Operador

El Operador es el rol encargado de realizar el levantamiento catastral de los municipios asignados, para esta versión del sistema tiene acceso solo al módulo de Insumos en donde puede realizar la descarga de los insumos que el Gestor dispone para iniciar el proceso de levantamiento catastral en los municipios contratados, la funcionalidad de crear usuarios asociados a su entidad no está disponible para esta versión el sistema.

A continuación, se describen cada uno de los módulos que tiene acceso este rol.
## Gestión de Insumos

En este módulo el Operador podrá realizar la descarga de los insumos que el Gestor le ha dispuesto en el Sistema para iniciar las actividades relacionadas al levantamiento catastral, así como la consulta y descarga del reporte de cada uno de los insumos recibidas y un reporte general de todos los insumos entregados por el Gestor. Para esta versión del Sistema, se tienen las siguientes funcionalidades disponibles: Descargas pendientes, Descarga de reporte y Descargas realizadas.
### Descargas pendientes

Se despliega al dar clic en el menú lateral izquierdo en la entrada “Insumos/Descargas pendientes“, la interfaz despliega una lista de las entregas realizadas por el Gestor, que pueden ser por cada municipio asignado o varias entregas para un mismo municipio. Esta lista tiene los siguientes campos: Identificador de la entrega, el nombre del Gestor que hace la entrega, nombre del municipio, código del municipio de los insumos entregados, fecha de entrega, campo de observaciones y el campo de opciones en donde al dar clic en el icono “Ver“ se da ingreso a la entrega como se ve en la imagen.

<a class="" data-lightbox="Descargas pendientes" href="../_static/operador/1-descargas-pendientes.gif" title="Descargas pendientes" data-title="Descargas pendientes"><img src="../_static/operador/1-descargas-pendientes.gif" class="align-center" width="800px" alt="Descargas pendientes"/></a>

A continuación, el Operador podrá realizar la descarga de los insumos entregados.

<a class="" data-lightbox="Descargar insumo" href="../_static/operador/2-descargar-insumo.gif" title="Descargar insumo" data-title="Descargar insumo"><img src="../_static/operador/2-descargar-insumo.gif" class="align-center" width="800px" alt="Descargar insumo"/></a>

Una vez terminada la descarga y confirmando que se tienen los insumos entregados por el Gestor, se procede a cerrar la entrega dando clic en la parte inferior de la lista al botón de “Cerrar entrega“ con el fin de mantener organizadas las descargas.

**Advertencia**: ¡Una vez se cierre la entrega ya no es posible volver a descargar los insumos!, por ello se debe asegurar la descarga de todos los insumos de la entrega antes de cerrarla; para el caso del reporte de entrega este estará disponible en la funcionalidad de “Descargas realizadas“.

**Sugerencia**: El operador puede dejar abierta cada una de las entregas y descargar los insumos más de una vez, pero en el caso de tener numerosas entregas por parte del Gestor puede llevar a presentarle confusión, por lo tanto, se sugiere cerrarla cuando esté seguro de haber descargado completamente todos los insumos y no necesite tenerla abierta.

<a class="" data-lightbox="Cerrar la entrega de insumos" href="../_static/operador/5-cerrar-entrega-insumos.gif" title="Cerrar la entrega de insumos" data-title="Cerrar la entrega de insumos"><img src="../_static/operador/5-cerrar-entrega-insumos.gif" class="align-center" width="800px" alt="Cerrar la entrega de insumos"/></a>

### Descarga de reporte

Al ingresar al detalle de las entregas, en la parte superior derecha se encuentra el icono para la consulta y descarga del reporte general de la entrega; es importante indicar que, si se ingresa por primera vez a la entrega, los iconos de consulta de los reportes de descarga no están disponibles ya que estos solo se activan cuando el Operador realiza la descarga del insumo al dar clic en el icono “Descargar“ y cuando hace la descarga de todos los insumos el icono de reporte general se activa en la parte superior de la lista. Por otra parte, al ingresar por primera vez a esta lista la fecha de descarga aparece con una etiqueta “No se ha descargado el insumo“ y se actualiza una única vez con la fecha y hora en el momento de la descarga del insumo y con esto ya se puede consultar el reporte de descarga. Es de notar que la entrega sólo es posible cerrarla cuando el Operador ha hecho la descarga de todos los insumos de la entrega y con ello ya desaparece de la lista de “Descargas pendientes“ y pasa a lista de “Descargas realizadas“.

<a class="" data-lightbox="Descargar reporte individual" href="../_static/operador/3-descargar-reporte-individual.gif" title="Descargar reporte individual" data-title="Descargar reporte individual"><img src="../_static/operador/3-descargar-reporte-individual.gif" class="align-center" width="800px" alt="Descargar reporte individual"/></a>

<a class="" data-lightbox="Descargar reporte general" href="../_static/operador/4-descargar-reporte-general.gif" title="Descargar reporte general" data-title="Descargar reporte general"><img src="../_static/operador/4-descargar-reporte-general.gif" class="align-center" width="800px" alt="Descargar reporte general"/></a>

### Descargas realizadas

Se despliega al dar clic en el menú lateral izquierdo en la entrada “Insumos/Descargas realizadas“, la interfaz despliega una lista de las descargas de insumos realizadas por el Operador, que pueden ser por cada municipio asignado o varias entregas para un mismo municipio. Esta lista tiene los siguientes campos: Identificador de la descarga, el nombre del Gestor que hace la entrega, nombre del municipio, código del municipio, fecha de entrega, campo de observaciones y el campo de opciones en donde al dar clic en el icono “Ver“ se da ingreso a la interfaz de detalle de “Descargas realizadas“ como se ve en la imagen.

<a class="" data-lightbox="Resumen de las descargas realizadas" href="../_static/operador/6-descargas-realizaas.gif" title="Resumen de las descargas realizadas" data-title="Resumen de las descargas realizadas"><img src="../_static/operador/6-descargas-realizaas.gif" class="align-center" width="800px" alt="Resumen de las descargas realizadas"/></a>

Una vez se ingrese a alguno de los registros se muestra el detalle en donde se tienen los datos generales de la descarga por parte del Operador y en la parte superior derecha se encuentra el icono para la consulta y descarga del reporte general de la entrega que se generó en el momento de cerrar el registro de la entrega; a continuación en la parte inferior se muestra un listado con los insumos descargados con los siguientes campos: nombre del insumo descargado, observaciones, fecha de descarga, nombre del usuario que realizó la descarga y su correo como se ve en la imagen. Esta interfaz sirve de apoyo al usuario para llevar un registro de las descargas de insumos realizadas.

<a class="" data-lightbox="Descargar reporte de las descargas realizadas" href="../_static/operador/7-descargar-reporte-descarga-realizada.gif" title="Descargar reporte de las descargas realizadas" data-title="Descargar reporte de las descargas realizadas"><img src="../_static/operador/7-descargar-reporte-descarga-realizada.gif" class="align-center" width="800px" alt="Descargar reporte de las descargas realizadas"/></a>

## Entrega de productos "Levantamiento Catastral"

Ver Bandeja de entrada

<a class="" data-lightbox="Ver bandeja de entrada" href="../_static/operador/levcat/0_bandeja-entrada.gif" title="Ver bandeja de entrada" data-title="Ver bandeja de entrada"><img src="../_static/operador/levcat/0_bandeja-entrada.gif" class="align-center" width="800px" alt="Ver bandeja de entrada"/></a>

Crear borrador de "Entrega" a Gestor

<a class="" data-lightbox="Crear borrador de entrega" href="../_static/operador/levcat/1_1-crear-borrador-de-entrega.gif" title="Crear borrador de entrega" data-title="Crear borrador de entrega"><img src="../_static/operador/levcat/1_1-crear-borrador-de-entrega.gif" class="align-center" width="800px" alt="Crear borrador de entrega"/></a>

Eliminar borrador de "Entrega"

<a class="" data-lightbox="Eliminar borrador de entrega" href="../_static/operador/levcat/1_2-eliminar-borrador-de-entrega.gif" title="Eliminar borrador de entrega" data-title="Eliminar bandeja de entrada"><img src="../_static/operador/levcat/1_2-eliminar-borrador-de-entrega.gif" class="align-center" width="800px" alt="Eliminar borrador de entrega"/></a>

Actualizar borrador de "Entrega"

<a class="" data-lightbox="Actualizar borrador de entrega" href="../_static/operador/levcat/1_3-actualizar-entrega-borrador.gif" title="Actualizar borrador de entrega" data-title="Actualizar bandeja de entrada"><img src="../_static/operador/levcat/1_3-actualizar-entrega-borrador.gif" class="align-center" width="800px" alt="Actualizar borrador de entrega"/></a>

Ver tipos de "Entregas"

<a class="" data-lightbox="Ver tipos de entregas" href="../_static/operador/levcat/1_4-ver-tipos-de-entregas.gif" title="Ver tipos de entregas" data-title="Ver tipos de entregas"><img src="../_static/operador/levcat/1_4-ver-tipos-de-entregas.gif" class="align-center" width="800px" alt="Ver tipos de entregas"/></a>

"Agregar productos" a la entrega

<a class="" data-lightbox="Agregar productos" href="../_static/operador/levcat/2_1-agregar-producto-a-entrega.gif" title="Agregar productos" data-title="Agregar productos"><img src="../_static/operador/levcat/2_1-agregar-producto-a-entrega.gif" class="align-center" width="800px" alt="Agregar productos"/></a>

Adjuntar archivos a un "Producto"

<a class="" data-lightbox="Adjuntar archivos" href="../_static/operador/levcat/2_2-adjuntar-archivo-a-producto.gif" title="Adjuntar archivos" data-title="Adjuntar archivos"><img src="../_static/operador/levcat/2_2-adjuntar-archivo-a-producto.gif" class="align-center" width="800px" alt="Adjuntar archivos"/></a>

Adjuntar y validar archivos XTF

<a class="" data-lightbox="Adjuntar archivos XTF" href="../_static/operador/levcat/2_3-adjuntar-validar-archivo-XTF.gif" title="Adjuntar archivos XTF" data-title="Adjuntar archivos XTF"><img src="../_static/operador/levcat/2_3-adjuntar-validar-archivo-XTF.gif" class="align-center" width="800px" alt="Adjuntar archivos XTF"/></a>

Adjuntar un recurso FTP

<a class="" data-lightbox="Adjuntar un FTP" href="../_static/operador/levcat/2_4-adjuntar-FTP.gif" title="Adjuntar un FTP" data-title="Adjuntar un FTP"><img src="../_static/operador/levcat/2_4-adjuntar-FTP.gif" class="align-center" width="800px" alt="Adjuntar un FTP"/></a>

Realizar una entrega al Gestor

<a class="" data-lightbox="Realizar entrega al gestor" href="../_static/operador/levcat/2_5-realizar-entrega-a-gestor.gif" title="Realizar entrega al gestor" data-title="Realizar entrega al gestor"><img src="../_static/operador/levcat/2_5-realizar-entrega-a-gestor.gif" class="align-center" width="800px" alt="Realizar entrega al gestor"/></a>

Corregir y realizar entrega

<a class="" data-lightbox="Corregir y realizar entrega" href="../_static/operador/levcat/2_6-corregir-y-entregar-correccion.gif" title="Corregir y realizar entrega" data-title="Corregir y realizar entrega"><img src="../_static/operador/levcat/2_6-corregir-y-entregar-correccion.gif" class="align-center" width="800px" alt="Corregir y realizar entrega"/></a>

Ver entregas finalizadas y uso de filtros

<a class="" data-lightbox="Uso de filtros" href="../_static/operador/levcat/3-0_filtros-y-entregas-finalizadas.gif" title="Uso de filtros" data-title="Uso de filtros"><img src="../_static/operador/levcat/3-0_filtros-y-entregas-finalizadas.gif" class="align-center" width="800px" alt="Uso de filtros"/></a>
