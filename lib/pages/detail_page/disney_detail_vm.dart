import 'package:disney_app/model/character.dart';
import 'package:flutter/cupertino.dart';

class DisneyDetailVM extends ChangeNotifier{

  Character? comingCharacter;

  DisneyDetailVM(this.comingCharacter);

}