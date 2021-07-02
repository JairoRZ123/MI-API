class EpisodiosModel {
  int? id;
  String? name;
  String? air_date;
  String? episode;
  String? url;
  String? created;

  EpisodiosModel({
    this.id,
    this.name,
    this.air_date,
    this.episode,
    this.url,
    this.created,
  });

  factory EpisodiosModel.fromJsonMap(Map<String, dynamic> data) =>
      EpisodiosModel(
        id: data['id'],
        name: data['name'],
        air_date: data['air_date'],
        episode: data['episode'],
        url: data['url'],
        created: data['created'],
      );
}
