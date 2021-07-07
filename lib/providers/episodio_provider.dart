import 'package:dio/dio.dart';
import 'package:prueba/models/episodios_model.dart';

class EpisodiosProvider {
  final _url = 'https://rickandmortyapi.com/api/episode';
  final _http = Dio();

  Future<List<EpisodiosModel>> obtenerEpisodios() async {
    final response = await _http.get(_url);
    List<dynamic> data = response.data;

    return data
        .map((episodio) => EpisodiosModel.transformarInstancia(episodio))
        .toList();
  }
}
