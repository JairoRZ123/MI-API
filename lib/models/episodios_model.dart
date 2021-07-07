class EpisodiosModel {
  int id;
  String? name;
  String? airDate;
  String? episode;
  String? created;

  EpisodiosModel({
    required this.id,
    this.name,
    this.airDate,
    this.episode,
    this.created,
  });

  factory EpisodiosModel.transformarInstancia(Map<String, dynamic> episodio) =>
      EpisodiosModel(
        id: episodio['id'],
        name: episodio['name'],
        episode: episodio['episode'],
        airDate: episodio['airDate'],
        created: episodio['created'],
      );
}
