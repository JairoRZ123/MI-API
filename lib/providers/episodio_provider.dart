import 'package:dio/dio.dart';
import 'package:prueba/models/episodios_model.dart';

class EpisodiosProvider {
  final _url = 'https://rickandmortyapi.com/api/episode';
  final _http = Dio();

  Future<List<EpisodiosModel>> obtenerepisodio(int pagina) async {
    List<EpisodiosModel> _episodios = [];
    final response = await _http.get(_url, queryParameters: {'offset': pagina});
    List<dynamic> data = response.data['results'];
    for (int i = 0; i < data.length; i++) {
      final responseEpisodio = await _http.get(data[i]['url']);
      _episodios.add(EpisodiosModel.fromJsonMap(responseEpisodio.data));
    }

    return _episodios;
  }
}
