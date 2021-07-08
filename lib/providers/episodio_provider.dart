import 'package:prueba/models/episodios_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class EpisodiosProvider {
  final String _url = 'https://rickandmortyapi.com/api/episode';

  Future<List<EpisodiosModel>> obtenerEpisodios() async {
    final url = Uri.https(_url, '/EpisodiosModel');
    final resp = await http.get(url);

    final List<dynamic> decodeddata = convert.jsonDecode(resp.body);

    return decodeddata
        .map((episodio) => new EpisodiosModel.fromJson(episodio))
        .toList();
  }
}
