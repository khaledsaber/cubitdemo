import 'package:flutter/material.dart';
import 'package:rickandmorty/data/models/character.dart';
import 'package:rickandmorty/data/web_services/character_web_services.dart';

class CharactersRepository {
  final CharacterWebServices characterWebServices;

  CharactersRepository(this.characterWebServices);

  Future<List<Character>> getAllCharacters() async {
    final characters = await characterWebServices.getAllCharacters();
    // print("CHARACTERSSS:" + characters.toString());
    // print(characters.map((c) => Character.fromJson(c)).toList().length);
    return characters.map((c) => Character.fromJson(c)).toList();

  }
}
