import 'package:disney_app/model/character.dart';
import 'package:disney_app/model/disney_character_list.dart';
import 'package:disney_app/services/api_response.dart';
import 'package:flutter/cupertino.dart';

class DisneyVM extends ChangeNotifier {
  CharacterList? _characterList;

  CharacterList? get characterList => _characterList;

  List<Character> _favList = [];

  List<Character> get favList => _favList;

  DisneyVM() {
    DisneyAPIService.getData().then((value) {
      _characterList = value;
      notifyListeners();
    });
  }

  bool isFav(Character character) {
    return _favList.contains(character);
  }

  void controlFavorites(Character character) {
    if(isFav(character)){
      _favList.remove(character);
    }else{
      _favList.add(character);
    }
    notifyListeners();
  }

}
