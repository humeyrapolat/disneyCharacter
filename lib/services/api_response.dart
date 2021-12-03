
import 'package:dio/dio.dart';
import 'package:disney_app/model/character.dart';
import 'package:disney_app/model/disney_character_list.dart';

class DisneyAPIService {

 static Future<CharacterList> getData() async {
    const String BASE_URL =
        "https://api.disneyapi.dev/characters";
    var res = await Dio().get(BASE_URL);
    return CharacterList.fromJson(res.data);
  }
}