# Pokédex Offline-First

Pokédex hecha en **Flutter** que consume el servicio **GraphQL de PokeAPI**. Sigue el enfoque **Offline-First** y **Clean Architecture**. La app siempre muestra los datos guardados en el teléfono, e Internet solo sirve para traer datos nuevos.

---

## 1. Descripción del proyecto

La app descarga el catálogo de los **1.025 Pokémon** desde PokeAPI, lo guarda en una base de datos local (SQLite con Drift) y lo muestra desde ahí. Por eso

- La app abre al instante, aunque no haya Internet.
- Sigue funcionando sin conexión, también después de cerrar y volver a abrir la app.
- Se actualiza sola cuando vuelve la conexión.
- Muestra en todo momento un indicador de conectividad con el estado real del servicio.

**Lo que hace hoy**
- Lista de Pokémon con número, nombre oficial, imagen y tipos.
- Estados de carga, vacío y error con botón para Reintentar.
- Indicador global con los estados En línea, Sin conexión, Sin servicio, Sincronizando y Verificando. Al tocarlo muestra de dónde vienen los datos y cuándo se actualizaron.
- Imágenes guardadas en el teléfono para verlas sin conexión a Internet.

---

## 2. Requisitos de ejecución

| Requisito | Versión |
|---|---|
| Flutter | Estable, con Dart SDK `^3.13.5` |
| Android | Emulador o teléfono con Android 6.0 (API 23) o superior |
| iOS | Simulador o iPhone |
| Internet | Solo la primera vez, para descargar el catálogo |

---

## 3. Instrucciones de instalación

```bash
# 1. Clonar el repositorio
git clone https://github.com/emilpaulino/pokedex.git
cd pokedex

# 2. Descargar las dependencias
flutter pub get

# 3. Generar el código de Drift (archivos *.g.dart)
dart run build_runner build

# 4. Ejecutar
flutter run
```

---

## 4. Tecnologías utilizadas y su justificación

| Paquete | Para qué se usa | Por qué este y no otro |
|---|---|---|
| `flutter_riverpod` | Guardar la información que muestra la pantalla (la lista de Pokémon, si está descargando, si hubo un error) y avisarle cuando cambia, para que se redibuje sola | Cada pieza (base de datos, cliente, repositorio) se crea una sola vez y se comparte con quien la pida. Es más directo que BLoC para el tamaño del proyecto. |
| `drift` + `drift_flutter` | Base de datos dentro del teléfono (SQLite) | Permite tablas relacionadas entre sí, consultas SQL, guardar varios cambios juntos (o ninguno si algo falla) y avisar a la pantalla cuando cambian los datos para que se actualice sola. Ver [ADR-001](docs/adr/001-drift-persistencia-local.md). |
| `graphql` | Pedirle los datos a PokeAPI | Envía las consultas cambiando solo algunos valores (por ejemplo, la página) y permite saber qué tipo de error ocurrió (si el servidor respondió con error, si no hay Internet o si la consulta tuvo problemas). |
| `connectivity_plus` | Saber cuándo el teléfono se conecta o se desconecta de una red | Avisa en el momento en que cambia la red, para volver a revisar la conexión sin esperar. |
| `cached_network_image` + `flutter_cache_manager` | Guardar las imágenes en el teléfono | Descarga cada imagen la primera vez que aparece en pantalla y después la muestra sin Internet. Se le puso un límite propio de cuántas guarda y por cuánto tiempo. Ver [ADR-002](docs/adr/002-imagenes-cache-bajo-demanda.md). |
| `go_router` | Moverse entre pantallas | Todas las rutas van en un solo archivo (`router.dart`). Por ahora solo tiene la lista. Cuando se agregue el detalle, la pantalla recibirá solo el número del Pokémon y buscará sus datos en la base del teléfono. |
| `drift_dev` + `build_runner` | Crear automáticamente el código de las tablas de Drift | Drift los necesita para funcionar. Solo se usan en desarrollo, no van dentro de la app. |
| `flutter_lints` | Reglas que revisan que el código esté bien escrito | Las usa `flutter analyze`. Solo se usan mientras se programa, no van dentro de la app. |

---

## 5. Arquitectura

El código sigue **Clean Architecture** con tres capas. La pantalla (presentation) y la parte que trae los datos (data) dependen del dominio, pero el dominio no depende de ninguna de las dos. Así, si cambia la API o la base de datos, solo cambia la capa data.

```
┌──────────────────────────────────────────────┐
│ PRESENTATION                                 │
│ pantallas · widgets · providers (Riverpod)   │
└───────────────────┬──────────────────────────┘
                    │ solo conoce el contrato
┌───────────────────▼──────────────────────────┐
│ DOMAIN                                       │
│ entidades (Pokemon, PokemonType)             │
│ contrato del repositorio (PokemonRepository) │
└───────────────────▲──────────────────────────┘
                    │ implementa el contrato
┌───────────────────┴──────────────────────────┐
│ DATA                                         │
│ repositorio · motor de sincronización        │
│ data source remoto (GraphQL)                 │
│ data source local (Drift) · DTOs · mappers   │
└───────┬───────────────────────────┬──────────┘
        │                           │
   ┌────▼─────┐               ┌─────▼──────┐
   │ PokeAPI  │               │   Drift    │
   │ GraphQL  │               │  (SQLite)  │
   └──────────┘               └────────────┘
```

**Reglas que se cumplen**
- La pantalla **nunca** recibe respuestas de GraphQL. Lee de Drift a través del repositorio.
- El dominio no importa Flutter, GraphQL ni Drift.
- Los errores técnicos se traducen a fallos del dominio (`Failure`) con mensajes para el usuario. La app nunca muestra el texto de error del servidor.

**Modelo de errores**

| Error técnico (data) | Fallo (dominio) | Cuándo pasa |
|---|---|---|
| `NetworkException` | `NetworkFailure` | No se pudo llegar al servidor |
| `RequestTimeoutException` | `TimeoutFailure` | El servidor tardó más de 30 s |
| `RateLimitException` | `RateLimitFailure` | Demasiadas consultas (HTTP 429) |
| `ServerException` | `ServerFailure` | Error HTTP, errores GraphQL o respuesta inválida |
| `CacheException` | `CacheFailure` | Falló la base de datos local |

---

## 6. Estructura del proyecto

```
lib/
├── main.dart                  → arranca la app
├── app/                       → une las piezas de toda la app
│   ├── app.dart               → widget raíz que sincroniza al abrir y al reconectar
│   ├── router.dart            → rutas (go_router)
│   ├── theme.dart             → colores y estilos
│   └── widgets/
│       └── connection_indicator.dart
├── core/                      → lo que comparte toda la app
│   ├── cache/                 → caché de imágenes
│   ├── connectivity/          → monitor de conexión y health check
│   ├── database/              → tablas y base de datos (Drift)
│   ├── error/                 → excepciones y fallos
│   ├── network/               → cliente GraphQL
│   └── sync/                  → estados de sincronización
└── features/
    └── pokemon/
        ├── domain/
        │   ├── entities/      → Pokemon, PokemonType
        │   └── repositories/  → contrato PokemonRepository
        ├── data/
        │   ├── datasources/   → remoto (GraphQL), local (Drift) y consultas
        │   ├── dtos/          → forma de la respuesta de la API
        │   ├── mappers/       → DTO → Drift → entidad
        │   ├── repositories/  → implementación del repositorio
        │   └── sync/          → motor de sincronización del catálogo
        └── presentation/
            ├── pages/         → pantalla de la lista
            ├── providers/     → lista, última sincronización y controlador del sync
            └── widgets/       → tarjeta de Pokémon
docs/
└── adr/                       → decisiones de arquitectura (ADR)
```

`core/` solo tiene lo que sirve para cualquier funcionalidad. Lo específico de los Pokémon, como el motor de sincronización, vive en `features/pokemon/`.

---

## 7. Estrategia Offline-First

**La base de datos local es la fuente de verdad.** La pantalla siempre lee de Drift, y la API solo sirve para llenarla y actualizarla.

```
PokeAPI ──► motor de sincronización ──► Drift ──watch()──► pantalla
```

- **Lectura.** La pantalla observa Drift con `watch()`. Cada vez que el sync guarda una página, la lista se actualiza sola.
- **Sin bloqueos.** La app abre y muestra los datos guardados. El sync corre en segundo plano y nunca se espera para dibujar.
- **Sin Internet.** El sync falla, pero la pantalla sigue mostrando lo guardado. Si no hay nada guardado, explica por qué y ofrece Reintentar.
- **Los datos guardados tienen prioridad.** Si hay Pokémon en Drift, se muestran aunque el último sync haya fallado. El indicador avisa del problema.
- **Una respuesta inválida nunca borra datos buenos.** Si la API responde con errores, aunque traiga datos parciales, no se guarda nada.

---

## 8. Uso de GraphQL y estrategia de paginación

Se usa la API `https://graphql.pokeapi.co/v1beta2`.

**Una sola consulta por página** trae de cada Pokémon el id, el nombre interno, el nombre oficial en inglés, la altura, el peso, el número de Pokédex, la ilustración oficial, los tipos (ordenados por *slot*) y las habilidades. Así se evitan peticiones extra. PokeAPI permite **100 peticiones por hora**.

**Paginación con `limit` y `offset`**
- Páginas de **200**, ordenadas por `id` → **6 peticiones** para los 1.025 Pokémon.
- El orden fijo hace que cada página traiga siempre los mismos Pokémon, y eso permite **reanudar**.
- Se llega al final cuando una página trae menos de 200.
- Solo se pide la forma normal de cada Pokémon (`is_default: true`). Algunos tienen versiones especiales que comparten el mismo número de Pokédex, pero como ese número no se puede repetir en la base de datos, se dejan fuera.

**Configuración del cliente**
- `FetchPolicy.noCache` hace que siempre pregunte a la API y no guarde copia en memoria. La única persistencia es Drift.
- `queryRequestTimeout: null` apaga el límite oculto de 5 s de la librería. En su lugar se usan límites propios
    - **30 s** por página del catálogo.
    - **5 s** para comprobar la conexión.
- Las consultas se traducen (`gql(...)`) una sola vez y se reutilizan.

---

## 9. Estrategia de sincronización

**Cuándo se sincroniza**

| Evento | ¿Descarga? |
|---|---|
| Al abrir la app | Siempre |
| Al recuperar la conexión | Siempre |
| Al tocar «Reintentar» | Siempre |

Cada descarga son 6 peticiones. Nunca se sincroniza de forma continua. Si se llegara al límite de 100 peticiones por hora, la API responde con un error 429. La app sigue mostrando los datos guardados y avisa al usuario.

En la entrega final se agregarán la comprobación al abrir el detalle y una comprobación periódica mientras el servicio esté disponible.

**Cómo funciona el motor** (`PokemonCatalogSync`)

```
1. Lee SyncMetadata para saber por qué offset iba (0 si la última terminó bien)
2. Repite
     anota "en curso" y el offset
     pide 200 Pokémon a la API
     los guarda en Drift (una transacción por página)
     suma 200 al offset
   hasta que llegue una página con menos de 200
3. Anota "éxito", la hora y offset 0
   Si algo falla, anota "error" y deja el offset para continuar desde ahí
```

**Garantías**
- **Sin duplicados.** Los Pokémon, tipos y habilidades se guardan con *upsert* (insertar si no existe, actualizar si existe), usando el id de la API como clave.
- **Sin datos a medias.** Cada página se guarda en una **transacción** con un *batch*. Si algo falla, no queda nada parcial.
- **Reanudable.** Si la descarga se corta, la próxima sigue desde donde quedó. Después de cada página se anota cuántos Pokémon se han descargado (el *offset*).
- **Nunca dos a la vez.** Si ya hay una descarga en curso, no empieza otra (variable `_isRunning`).
- **Relaciones exactas.** Los tipos y habilidades de cada Pokémon se reemplazan completos, tal como vienen de la API.
- **Los favoritos no se tocan.**

**Cómo se restauran los datos cambiados en la base local**

Si alguien modifica un dato del catálogo directamente en la base de datos (por ejemplo, con un inspector), la app no se entera, porque nadie le avisa qué cambió. La única forma de saber si un dato está mal es compararlo con PokeAPI, y para eso hay que descargarlo.

Por eso cada sincronización descarga el catálogo completo y lo guarda encima de lo que había. Lo que fue alterado vuelve a quedar como en PokeAPI y lo demás queda igual. Descargar y sobrescribir es, al mismo tiempo, detectar y restaurar. Siempre gana el dato de PokeAPI, y los favoritos nunca se tocan.

---

## 10. Persistencia local

La base de datos es SQLite con Drift, en el archivo `pokedex_database`.

| Tabla | Qué guarda | Clave |
|---|---|---|
| `Pokemons` | id, nombre interno, nombre oficial, número de Pokédex, altura (m), peso (kg), URL de la imagen, fecha de actualización | `id` (de la API) |
| `Types` | cada tipo una sola vez | `id` |
| `PokemonTypes` | pares Pokémon ↔ tipo, con `slot` (1 = principal) | `pokemonId` + `typeId` |
| `Abilities` | cada habilidad una sola vez | `id` |
| `PokemonAbilities` | pares Pokémon ↔ habilidad, con `isHidden` (si la habilidad es oculta) | `pokemonId` + `abilityId` |
| `Favorites` | Pokémon favoritos del usuario | `pokemonId` |
| `SyncMetadata` | estado del sync, última vez que terminó bien y offset | `resourceKey` |

**Detalles**
- **Claves foráneas activadas** (`PRAGMA foreign_keys = ON` al abrir), con borrado en cascada en las tablas intermedias.
- **Índices**
    - `idx_pokemon_display_name` en `Pokemons.displayName`, para la búsqueda.
    - `idx_pokemon_types_type` en `PokemonTypes.typeId`, para el filtro por tipo.
    - El número de Pokédex es único, así que también tiene índice (lo usa el orden de la lista).
- **Lectura.** Los Pokémon y sus tipos se leen con **un solo join** y se agrupan en Dart.
- **Unidades convertidas al guardar.** La API da decímetros y hectogramos. Se guardan metros y kilogramos.

**Imágenes.** En Drift solo se guarda la URL. Cada imagen se descarga la primera vez que aparece y se guarda en una caché propia (**1.500 imágenes durante 365 días**), cargada al tamaño de la tarjeta para ahorrar memoria.

---

## 11. Gestión de conectividad

**Estados del indicador**

| Estado | Símbolo | Significado |
|---|---|---|
| En línea | ● verde | hay red y PokeAPI responde |
| Sin conexión | ○ gris | no se pudo llegar al servidor |
| Sin servicio | ▲ naranja | hay red, pero PokeAPI no responde bien |
| Sincronizando | ↻ azul | se están descargando datos (tiene prioridad) |
| Verificando | ○ gris claro | la app acaba de abrir y todavía no sabe el estado (dura menos de un segundo) |

Cada estado tiene **ícono y texto**, no solo color. Al tocar el indicador se comprueba la conexión en ese momento y se abre un panel con el origen de los datos y la hora de la última actualización (formato 12 h).

**Cómo se decide el estado.** No basta con saber si hay Wi-Fi. Se envía a PokeAPI una consulta mínima (1 Pokémon, solo su id, 5 s máximo) y el estado depende del resultado.

| Resultado | Estado |
|---|---|
| Respondió bien | En línea |
| Error HTTP o errores GraphQL | Sin servicio |
| No se pudo llegar al servidor | Sin conexión |
| Se agotó el tiempo | Se desempata con `connectivity_plus`. Si hay red, Sin servicio. Si no, Sin conexión |

**Cuándo se comprueba**
- Al abrir la app.
- Cuando cambia la red, esperando **1,5 s** para que se estabilice.
- Cada **30 s**, solo mientras no esté en línea.
- Al tocar el indicador.

Nunca hay dos comprobaciones a la vez (variable `_isChecking`). Al pasar de *Sin conexión* o *Sin servicio* a *En línea*, la app **sincroniza sola**.

---

## 12. Funcionalidades adicionales implementadas

- **Nombre oficial** de cada Pokémon («Mr. Mime», «Nidoran♀») en vez del nombre interno de la API.
- **Tarjetas con el color del tipo principal** y etiquetas con el nombre de cada tipo.
- **Panel de estado** al tocar el indicador, con la hora de la última actualización.

---

## 13. Limitaciones conocidas

- **Wi-Fi sin salida a Internet.** Por ejemplo, el de un hotel antes de iniciar sesión. Se muestra como *Sin servicio* en vez de *Sin conexión*. Distinguirlo exigiría consultar otro servidor además de PokeAPI.
- **Simulador de iPhone.** Usa la red de la Mac y no siempre avisa cuando cambia. Al apagar el Wi-Fi de la Mac puede mostrar *Sin servicio* unos segundos antes de *Sin conexión*. En un teléfono real o en un emulador Android funciona bien.
- **Imágenes nunca vistas.** Sin Internet se muestra un ícono de respaldo, pero los datos del Pokémon sí aparecen.
- **Límite de peticiones.** Cada vez que se abre la app se descarga el catálogo (6 peticiones). Si se abre muchas veces en una hora, PokeAPI puede rechazar las consultas por un rato. La app sigue funcionando con los datos guardados.

**Pendiente para la entrega final.** Detalle completo, favoritos, búsqueda y filtros, trivia, comprobación de datos alterados al abrir el detalle y de forma periódica, reintentos con espera exponencial (*backoff*), diseño para tablets, internacionalización, accesibilidad completa y capturas del indicador en sus cuatro estados.

---

## Decisiones de arquitectura (ADR)

- [ADR-001 — Drift como persistencia local](docs/adr/001-drift-persistencia-local.md)
- [ADR-002 — Imágenes guardadas bajo demanda](docs/adr/002-imagenes-cache-bajo-demanda.md)

---

## Uso de inteligencia artificial

Durante el desarrollo se usó **Claude** como asistente para explicar conceptos, proponer código y revisar el proyecto.