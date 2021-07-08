import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:prueba/pages/clone_page.dart';
import 'package:prueba/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prueba Grupo TI5-1',
      initialRoute: 'grid',
      getPages: [
        GetPage(name: 'grid', page: () => HomePage()),
        GetPage(name: 'clone', page: () => ClonePage()),
      ],
      //routes: {'/': (_) => HomePage()},
    );
  }
}
