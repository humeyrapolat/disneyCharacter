class Character {
  Character({
      List<String>? films, 
      List<String>? shortFilms, 
      List<String>? tvShows, 
      List<String>? videoGames, 
      List<String>? parkAttractions, 
      List<String>? allies, 
      List<String>? enemies, 
      int? id, 
      String? sourceUrl, 
      String? name, 
      String? imageUrl, 
      String? createdAt, 
      String? updatedAt, 
      String? url, 
      int? v,}){
    _films = films;
    _shortFilms = shortFilms;
    _tvShows = tvShows;
    _videoGames = videoGames;
    _parkAttractions = parkAttractions;
    _allies = allies;
    _enemies = enemies;
    _id = id;
    _sourceUrl = sourceUrl;
    _name = name;
    _imageUrl = imageUrl;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _url = url;
    _v = v;
}

  Character.fromJson(dynamic json) {
    _films = json['films'] != null ? json['films'].cast<String>() : [];
    _shortFilms = json['shortFilms'] != null ? json['shortFilms'].cast<String>() : [];
    _tvShows = json['tvShows'] != null ? json['tvShows'].cast<String>() : [];
    _videoGames = json['videoGames'] != null ? json['videoGames'].cast<String>() : [];
    _parkAttractions = json['parkAttractions'] != null ? json['parkAttractions'].cast<String>() : [];
    _allies = json['allies'] != null ? json['allies'].cast<String>() : [];
    _enemies = json['enemies'] != null ? json['enemies'].cast<String>() : [];
    _id = json['_id'];
    _sourceUrl = json['sourceUrl'];
    _name = json['name'];
    _imageUrl = json['imageUrl'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _url = json['url'];
    _v = json['__v'];
  }
  List<String>? _films;
  List<String>? _shortFilms;
  List<String>? _tvShows;
  List<String>? _videoGames;
  List<String>? _parkAttractions;
  List<String>? _allies;
  List<String>? _enemies;
  int? _id;
  String? _sourceUrl;
  String? _name;
  String? _imageUrl;
  String? _createdAt;
  String? _updatedAt;
  String? _url;
  int? _v;

  List<String>? get films => _films;
  List<String>? get shortFilms => _shortFilms;
  List<String>? get tvShows => _tvShows;
  List<String>? get videoGames => _videoGames;
  List<String>? get parkAttractions => _parkAttractions;
  List<String>? get allies => _allies;
  List<String>? get enemies => _enemies;
  int? get id => _id;
  String? get sourceUrl => _sourceUrl;
  String? get name => _name;
  String? get imageUrl => _imageUrl;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get url => _url;
  int? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['films'] = _films;
    map['shortFilms'] = _shortFilms;
    map['tvShows'] = _tvShows;
    map['videoGames'] = _videoGames;
    map['parkAttractions'] = _parkAttractions;
    map['allies'] = _allies;
    map['enemies'] = _enemies;
    map['_id'] = _id;
    map['sourceUrl'] = _sourceUrl;
    map['name'] = _name;
    map['imageUrl'] = _imageUrl;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['url'] = _url;
    map['__v'] = _v;
    return map;
  }

}