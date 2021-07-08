class EpisodiosModel {
  int id;
  String? name;
  String? airDate;
  String? episode;
  String? created;

  EpisodiosModel({
    required this.id,
    required this.name,
    required this.airDate,
    required this.episode,
    required this.created,
  });

  factory EpisodiosModel.fromJson(Map<String, dynamic> episodio) =>
      EpisodiosModel(
        id: episodio['id'],
        name: episodio['name'],
        episode: episodio['episode'],
        airDate: episodio['airDate'],
        created: episodio['created'],
      );
}
