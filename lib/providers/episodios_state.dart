import 'package:get/get.dart';
import 'package:prueba/models/episodios_model.dart';
import 'package:prueba/providers/episodio_provider.dart';

class EpisodiosState extends GetxController {
  List<EpisodiosModel> episodios = [];
  final _episodiosProvider = EpisodiosProvider();
  int _pagina = 0;

  Future<void> obtenerEpisodios() async {
    final carsList = await _episodiosProvider.obtenerepisodio(_pagina);
    episodios.addAll(carsList);
    _pagina += 20;
    update();
  }
}
