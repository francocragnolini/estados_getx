import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:estados_get/controllers/usuario_controller.dart';
import 'package:estados_get/models/usuario.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // print( Get.arguments['edad'] );
    //llama al controlador : es una clase con diferentes metodos
    //ahora tengo acceso a toda la informacion del controlador como sus metodos
    final usuarioCtrl = Get.find<UsuarioController>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
              child: Text('Establecer Usuario',
                  style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {
                // metodo cargar usuario
                usuarioCtrl.cargarUsuario(Usuario(nombre: 'Franco', edad: 35));
                Get.snackbar(
                    'Usuario establecido', 'Franco es el nombre del usuario',
                    backgroundColor: Colors.white,
                    boxShadows: [
                      BoxShadow(color: Colors.black38, blurRadius: 10)
                    ]);
              }),
          MaterialButton(
              child:
                  Text('Cambiar Edad', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {
                usuarioCtrl.cambiarEdad(29);
              }),
          MaterialButton(
              child: Text('Añadir Profesion',
                  style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {
                // usuarioCtrl.agregarProfesion( 'Profesión #${ usuarioCtrl.usuario.value.profesiones.length + 1 }' );
                usuarioCtrl.agregarProfesion(
                    'Profesión #${usuarioCtrl.profesionesCount + 1}');
              }),
          MaterialButton(
              child:
                  Text('Cambair tema', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {
                Get.changeTheme(
                    Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
              }),
        ],
      )),
    );
  }
}
