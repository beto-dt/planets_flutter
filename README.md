# Examen Tecnico FLutter

## Descripción
Este es un proyecto Flutter que implementa generación de código utilizando el paquete `build_runner`.

## Requisitos Previos
- Flutter SDK
- Dart SDK
- Un IDE (por ejemplo, Android Studio, VS Code o IntelliJ IDEA)

## Instalación
1. Clonar el repositorio:
```bash
git clone https://github.com/beto-dt/planets_flutter
```

2. Usar la rama develop
```bash
git checkout develop 
```

3. Instalar dependencias:
```bash
flutter pub get
```

## Generación de Código
Este proyecto utiliza generación de código para varias funcionalidades. Para generar los archivos necesarios, ejecuta:
```bash
flutter pub run build_runner build -d
```

La bandera `-d` permite la eliminación de salidas conflictivas.

### Comandos Adicionales
- Para observar cambios y regenerar automáticamente:
```bash
flutter pub run build_runner watch
```

- Para limpiar los archivos generados:
```bash
flutter pub run build_runner clean
```

## Detalles del Desarrolo

Este proyecto fue desarrollado con un backend anteriormente ya desarrollado donde simplemente lo conectamos 

Se utilizo https://railway.com/ para levantar la infraestructura , donde la base de datos usamos mongoDb 
y el backend unicamente se encarga para realizar registro de user , inicio de sesion y olvide mi contraseña 

para el objetivo del examen uso un segundo endpoint => const String baseURLPlanets = 'https://us-central1-a-academia-espacial.cloudfunctions.net/planets';

```bash
final networkServicePlanetsProvider = Provider<Dio>((ref) {
final options = BaseOptions(
baseUrl: baseURLPlanets,
connectTimeout: const Duration(seconds: 60),
receiveTimeout: const Duration(seconds: 60),
sendTimeout: const Duration(seconds: 60),
headers: {
'Content-Type': 'application/json',
'Accept': '*/*',
}
);

final dio = Dio(options);
final networkServiceInterceptor =
ref.watch(networkServiceInterceptorProvider(dio));

dio.interceptors.add(networkServiceInterceptor);
return dio;
});
```

## Pendiente 

Quedo pendiente en realizar la segunda pagina para cuando escogo 
un planeta  se pase a otra pagina y de la descripcion asi 
que por el tiempo en la misma pagina donde muestro la lista hay 
muestro imagen y detalle .

Tambien se realizo un diseño muy basico

## Despliegue 

Al momento el proyecto esta desplegado 
  -https://railway.com/ => InfraEstructura 
  -Web subido https://riverpod-api.web.app/

## Errores 
  Al momento existe un error al momento que me logeo en modo web por un problema de cors 
  que no me dio el tiempo de acabar 

```bash
Access to XMLHttpRequest at 'https://us-central1-a-academia-espacial.cloudfunctions.net/planets/' 
from origin 'https://riverpod-api.web.app' has been blocked by CORS policy: Request header field 
access-control-allow-methods is not allowed by Access-Control-Allow-Headers in preflight response.
```


## Observaciones

para iniciar sesion  puede realizarlo en dos formas 

1.- Digitando estas credenciales 

    User: luis.atorred24@gmail.com
    Password: 12345678

2.- Creando un Usuario por la ventana SignUp


Al momento el olvidar la contraseña se encuentra 
desabilitado asi que si se trata de mandar un accion 
no funcionara.

## Agradecimientos
De Antemano muchas Gracias por la oportunidad de participar en el proceso
y estoy atento a los resultados muchas gracias 


