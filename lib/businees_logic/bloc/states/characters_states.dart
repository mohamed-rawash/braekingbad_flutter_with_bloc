import 'package:breaking_flutter/data/models/characters.dart';

abstract class CharactersStates {}

class CharactersInitialState extends CharactersStates {}

class CharactersLoaded extends CharactersStates {
  final List<Character> characters;

  CharactersLoaded(this.characters);
}