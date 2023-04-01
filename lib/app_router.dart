import 'package:flutter/material.dart';
import 'package:rickandmorty/presentation/screens/character_details_screen.dart';
import 'package:rickandmorty/presentation/screens/characters_screen.dart';

import 'constants/strings.dart';

class AppRouter {
  Route? generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(builder: (_) => const CharactersScreen());

      case characterDetailsScreen:
        return MaterialPageRoute(
            builder: (_) => const CharacterDetailsScreen());
    }
    return null;
  }
}
