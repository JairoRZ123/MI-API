import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prueba/providers/episodio_state.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(EpisodioState());

    return Scaffold(
      body: Obx(() => SafeArea(
              child: GridView.count(
            padding: EdgeInsets.all(5),
            crossAxisCount: 2,
            children: controller.episodios.map((episodios) {
              return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              alignment: Alignment.center,
                              color: Colors.teal.shade100,
                              child: Text(episodios.name!),
                            ))),
                  ]);
            }).toList(),
          ))),
    );
  }
}
