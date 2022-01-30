import 'package:bloc/bloc.dart';
import 'package:breaking_flutter/businees_logic/bloc/states/characters_states.dart';
import 'package:breaking_flutter/data/models/characters.dart';
import 'package:breaking_flutter/data/repositories/characters_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersCubit extends Cubit<CharactersStates> {
  CharactersCubit() : super(CharactersInitialState());

  static CharactersCubit get(context) => BlocProvider.of(context);

  List<Character> characters = [];

  List<Character> getAllCharacters() {
    CharactersRepository().getAllCharacters().then((characters) {
      emit(CharactersLoaded(characters));
      this.characters = characters;
    });

    return characters;
  }


}