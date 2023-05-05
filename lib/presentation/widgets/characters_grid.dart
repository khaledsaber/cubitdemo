import 'package:flutter/material.dart';
import 'package:rickandmorty/presentation/widgets/character_item.dart';

import '../../data/models/character.dart';

class CharactersGrid extends StatelessWidget {
  const CharactersGrid({
    Key? key,
    required this.characters,
  }) : super(key: key);

  final List<Character> characters;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
            childAspectRatio: 2 / 3),
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemCount: characters.length,
        itemBuilder: (ctx, index) {
          return CharacterItem(character: characters[index]);
        });
  }
}
