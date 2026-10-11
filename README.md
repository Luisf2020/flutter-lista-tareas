# flutter-lista-tareas

![stack: Flutter](https://img.shields.io/badge/stack--Flutter-0d9488?style=flat-square) ![stack: Dart](https://img.shields.io/badge/stack--Dart-0d9488?style=flat-square)
![IA: asistido](https://img.shields.io/badge/IA--asistido-6366f1?style=flat-square)

App Flutter de lista de tareas con estado local, Material 3 y prueba de widget.

> **Transparencia sobre IA:** este proyecto se desarrollo con asistencia de inteligencia artificial (generacion de codigo, revision y documentacion). El codigo fue leido, ejecutado y probado manualmente antes de publicarse. No declara clientes, metricas ni resultados que no puedan verificarse.

## Problema que resuelve

Construir una interfaz con estado mutable en Flutter sin perder claridad entre logica y presentacion.

## Solucion implementada

Widget con estado (StatefulWidget), modelo propio y Material 3; incluye prueba de widget que verifica el contador tras agregar una tarea.

### Funcionalidades principales

- StatefulWidget con setState
- Modelo Tarea y lista tipada
- Material 3 con colorSchemeSeed
- Prueba de widget (flutter_test)

## Stack

- Flutter
- Dart

## Estructura

```
lib/main.dart           # app y estado
test/widget_test.dart   # prueba
```

## Puesta en marcha

```bash
flutter pub get
flutter run
flutter test
```

## Complejidad del proyecto

**Nivel: Intermedio** — Framework movil con arbol de widgets, ciclo de estado y pruebas; el despliegue requiere compilar y firmar una app.

El nivel describe la complejidad tecnica del proyecto, no el grado de dominio de quien lo escribio.

## Despliegue

App movil; se distribuye como APK/IPA, no como pagina web.  
El codigo fuente si esta disponible en este repositorio.

## Autor

**Luis Felipe Zuniga Leon** — Desarrollador de software asistido por IA

- GitHub: <https://github.com/Luisf2020>
- Correo: developerluis2@gmail.com
- WhatsApp: +504 3237 0056

---

_Proyecto de portafolio. El desarrollo se apoyo en herramientas de IA bajo revision tecnica humana._
