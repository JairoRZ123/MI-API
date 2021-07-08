import 'package:get/get.dart';
import 'package:prueba/models/episodios_model.dart';
import 'package:prueba/providers/episodio_provider.dart';

class EpisodioState extends GetxController {
  var title = 'vengo del controller';
  var episodios = <EpisodiosModel>[].obs;
  final episodiosProvider = new EpisodiosProvider();

  int get howManyEpis => this.episodios.length;

  @override
  void onInit() {
    obtenerEpisodios();
    super.onInit();
  }

  obtenerEpisodios() async {
    var result = await episodiosProvider.obtenerEpisodios();
    episodios.addAll(result);
  }
}
