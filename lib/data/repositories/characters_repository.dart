import 'package:breaking_flutter/data/models/characters.dart';
import 'package:breaking_flutter/data/web_serivces/characters_web_servieces.dart';

class CharactersRepository {
  
  late CharactersWebServices charactersWebServices;

   Future<List<Character>> getAllCharacters() async {
    final characters = await charactersWebServices.getAllCharacters();
    return characters.map((character) =>Character.fromJson(character)).toList();
  }
}