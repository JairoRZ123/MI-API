class Episodios {
  String? name;
  String? url;

  Episodios({
    this.name,
    this.url,
  });

  factory Episodios.fromMapJson(Map<String, dynamic> data) => Episodios(
        name: data['name'],
        url: data['url'],
      );
}
