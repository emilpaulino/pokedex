# ADR-002: Imágenes guardadas bajo demanda

## Contexto

La aplicación debe mostrar la imagen de cada Pokémon y seguir funcionando sin conexión.
PokeAPI ofrece varias imágenes por Pokémon, con estilos y tamaños distintos. La ilustración
oficial (official artwork) mide 475×475 píxeles y pesa aproximadamente entre 50 y 200 KB.
Con 1.025 Pokémon, guardarlas todas ocuparía cerca de 100 MB.

Necesito que las imágenes tengan un estilo uniforme, que se vean sin conexión y que no
obliguen al usuario a gastar datos móviles o espacio en imágenes que quizás nunca verá.
Además, el enunciado exige que las imágenes se decodifiquen a un tamaño acorde a su
contenedor y que la caché esté acotada (RNF-REN-04), y que se documente qué imágenes se
guardan, dónde, con qué límite y cómo se limpian (PS-08).

## Decisión

Se usará la **ilustración oficial** de PokeAPI para todos los Pokémon.

La base de datos local guardará solo la dirección (URL) de cada imagen, no la imagen. Las
imágenes se guardarán en el teléfono bajo demanda con `cached_network_image`: se
descargan la primera vez que aparecen en pantalla y después se leen desde el almacenamiento
local, aunque no haya conexión.

Se configura una caché propia (`pokemonImageCache`, con `flutter_cache_manager`):

- **Dónde:** en la carpeta de caché de la aplicación, con el nombre `pokemonImages`.
- **Límite:** hasta 1.500 imágenes, suficiente para los 1.025 Pokémon actuales.
- **Limpieza:** cuando se alcanza el límite, se borran las imágenes usadas hace más tiempo.
  Una imagen se considera válida durante un año. Después, si hay conexión, se vuelve a
  descargar.

La configuración por defecto (unas 200 imágenes y 30 días) no se usa, porque borraría
imágenes que el usuario ya vio.

Además, cada imagen se carga en memoria reducida al tamaño de la tarjeta (96 puntos
multiplicados por la densidad de la pantalla), con `memCacheWidth`, en lugar de cargarla
completa a 475×475.

Si una imagen no está disponible, se muestra un ícono de respaldo.

## Alternativas consideradas

- **Descargar todas las imágenes durante la sincronización:** garantiza que todas se vean
  sin conexión, pero obliga al usuario a descargar cerca de 100 MB sin pedirlo. Además, la
  sincronización tendría que manejar la descarga, los errores y la reanudación de más de
  1.000 archivos.

- **Usar el sprite clásico (96×96):** pesa muy poco, pero se ve pixelado en las tarjetas y
  su estilo no es uniforme entre generaciones.

- **Guardar las imágenes dentro de SQLite:** haría crecer mucho la base de datos y la
  volvería más lenta. SQLite está pensado para datos estructurados, no para archivos grandes.

- **Mantener la configuración por defecto de la caché:** es más simple, pero solo guarda unas
  200 imágenes durante 30 días; las demás dejarían de verse sin conexión.

## Consecuencias

### Ventajas

- Todas las imágenes tienen el mismo estilo.
- El usuario solo descarga las imágenes que ve.
- Las imágenes que ya se vieron se muestran sin conexión, también después de reiniciar.
- La sincronización solo maneja datos, lo que la mantiene simple.
- Sincronizar varias veces no vuelve a descargar las imágenes, porque solo se guarda su
  dirección.
- Cargar las imágenes reducidas disminuye el uso de memoria y hace la lista más fluida.

### Desventajas

- Sin conexión, un Pokémon cuya imagen nunca se vio muestra un ícono de respaldo, aunque sus
  datos sí se muestran.
- El espacio ocupado crece con el uso, hasta el límite configurado.
- El sistema operativo puede borrar la caché si el teléfono se queda sin espacio, y borrar
  los datos de la aplicación también la elimina. En esos casos las imágenes se descargan de
  nuevo cuando haya conexión.