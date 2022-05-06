# test_application1  
  
A new Flutter project.  
  
## Getting Started  
  
Este proyecto contienen un demo para realizar pruebas unitarias y de integracion en flutter.
El proyecto es un contador que cuenta con los botones de: Incrementar, disminuir y resetear el contador, gestionado mediante flutter_bloc como manejador de estado.
  
### Documentacion Oficial

- [Test.](https://docs.flutter.dev/cookbook/testing) 
- [Pruebas unitarias.](https://docs.flutter.dev/cookbook/testing/unit/introduction) 
- [Pruebas de widget.](https://docs.flutter.dev/cookbook/testing/widget/introduction) 
- [Pruebas de integracion.](https://docs.flutter.dev/testing/integration-tests) 

Comando para correr **pruebas unitarias**
```sh
flutter test
```
Comando para correr **pruebas de integracion**
```sh
flutter test integration_test
```

Comando para correr **pruebas de integracion en el emulador**
```sh
flutter test integration_test/test_driver.dart -d emulator-5554
```
