
# ADR-001: Drift (SQLite) como persistencia local

## Contexto

La consigna del proyecto requiere que la pantalla del catálogo lea los datos desde una 
persistencia local estructurada y que la API se utilice para alimentar y actualizar esa 
persistencia. Por tanto, no es suficiente con almacenar respuestas HTTP en una caché.

La aplicación necesita funcionar sin conexión, incluso después de cerrarla y abrirla 
nuevamente. También debe permitir buscar, filtrar y ordenar los Pokémon utilizando los 
datos locales, representar la relación entre Pokémon y tipos, almacenar información del 
usuario, como los favoritos, y actualizar la interfaz automáticamente cuando cambien los 
datos de la base de datos.

Para cumplir con estos requisitos, necesito una solución que facilite las consultas 
estructuradas, las relaciones entre tablas, las transacciones y la observación reactiva 
de los datos.

## Decisión

Se decidió utilizar **Drift sobre SQLite** como tecnología de persistencia local.

Drift permite definir las tablas y consultas desde Dart, generar código para acceder a 
la base de datos y observar consultas mediante `watch()`. Estas consultas emiten nuevos 
resultados cuando se producen cambios relevantes en los datos observados, lo que permite 
que la interfaz se actualice sin depender directamente de las respuestas de la API.

Se usará SQLite para almacenar el catálogo de Pokémon, sus tipos, los favoritos y los 
metadatos necesarios para controlar la sincronización.

La API GraphQL será la fuente remota de datos, mientras que la base de datos local será la 
fuente de datos que observará la interfaz. La descarga, transformación y sincronización de 
los datos se implementarán por separado, respetando la organización por capas de Clean 
Architecture.

## Alternativas consideradas

- **sqflite:** permite utilizar SQLite directamente desde Flutter y ofrece control 
sobre las consultas SQL. Sin embargo, requiere implementar manualmente mecanismos para 
observar los cambios en la base de datos y actualizar la interfaz. Drift proporciona 
consultas tipadas, generación de código y observación reactiva integradas en su modelo 
de persistencia.

- **Hive o SharedPreferences:** permiten almacenar datos localmente, pero no ofrecen el 
mismo modelo relacional de SQLite. Para este proyecto, las relaciones entre Pokémon y tipos, 
los índices y las consultas estructuradas hacen que estas alternativas sean menos adecuadas 
como persistencia principal del catálogo.

## Consecuencias

### Ventajas

- El catálogo puede consultarse sin conexión una vez que los datos se hayan almacenado 
localmente.
- Las búsquedas, los filtros y la ordenación pueden ejecutarse sobre la base de datos local.
- Las relaciones entre Pokémon y tipos pueden representarse mediante tablas relacionadas.
- Las consultas reactivas permiten actualizar la interfaz cuando cambian los datos observados.
- Las transacciones permiten guardar un grupo de datos de una sola vez. Si ocurre un error, 
se deshacen los cambios para evitar que queden datos incompletos en la base de datos.
- SQLite conserva los datos después de cerrar o reiniciar la aplicación.

### Desventajas

- Se deben definir las tablas, las relaciones, los índices y las migraciones de la base de 
datos.
- Se debe utilizar `build_runner` para generar el código requerido por Drift.
- Hay que diseñar y probar la sincronización para gestionar errores de red, interrupciones y 
reanudaciones sin duplicar registros.
