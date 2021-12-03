
import 'character.dart';

class CharacterList {
  CharacterList({
      List<Character>? data,
      int? count, 
      int? totalPages, 
      String? nextPage,}){
    _data = data;
    _count = count;
    _totalPages = totalPages;
    _nextPage = nextPage;
}

  CharacterList.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Character.fromJson(v));
      });
    }
    _count = json['count'];
    _totalPages = json['totalPages'];
    _nextPage = json['nextPage'];
  }
  List<Character>? _data;
  int? _count;
  int? _totalPages;
  String? _nextPage;

  List<Character>? get data => _data;
  int? get count => _count;
  int? get totalPages => _totalPages;
  String? get nextPage => _nextPage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['count'] = _count;
    map['totalPages'] = _totalPages;
    map['nextPage'] = _nextPage;
    return map;
  }

}
