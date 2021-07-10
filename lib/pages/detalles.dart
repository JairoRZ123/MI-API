import 'package:flutter/material.dart';
import 'package:prueba/models/episodios_model.dart';

class Detalles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Personajes result =
        ModalRoute.of(context)!.settings.arguments as Personajes;
    return Scaffold(
      body: Center(
        child: Image.network(result.image!),
      ),
    );
  }
}
