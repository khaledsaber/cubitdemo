import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickandmorty/business_logic/cubit/characters_state.dart';

import '../../data/models/character.dart';
import '../../data/repositories/character_repository.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository charactersRepository;

   List<Character> characters = [];

  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

 void getAllCharacters()  {
     charactersRepository.getAllCharacters().then((myCharacters) {
      emit(CharactersLoaded(myCharacters));
      // print("CHARLENGTH:"+characters.length.toString());
      characters = myCharacters;
    });
    // print("CHARLENGTH:"+characters.length.toString());
    //  return characters;
  }
}
