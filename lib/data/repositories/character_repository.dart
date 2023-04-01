import 'package:flutter/material.dart';
import 'package:rickandmorty/data/models/character.dart';
import 'package:rickandmorty/data/web_services/character_web_services.dart';

class CharactersRepository {
  final CharacterWebServices characterWebServices;

  CharactersRepository(this.characterWebServices);

  Future<List<dynamic>> getAllCharacters() async {
    final characters = await characterWebServices.getAllCharacters();
    return characters.map((c) => Character.fromJson(c)).toList();

  }
}