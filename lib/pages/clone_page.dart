import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prueba/providers/episodio_state.dart';

class ClonePage extends StatelessWidget {
  final EpisodioState controller = Get.find();

  @override
  Widget build(BuildContext context) {
    final episodioCount = controller.howManyEpis.toString();

    return Scaffold(
      appBar: AppBar(
        title: Text(controller.title),
      ),
      body: Center(
        child: Text('Hay un total de $episodioCount episodios!'),
      ),
    );
  }
}
