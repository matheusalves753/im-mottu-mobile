import 'package:flutter/material.dart';
import 'package:im_mottu_mobile/src/domain/entities/character.dart';

class CharacterDetailsWidget extends StatelessWidget {
  final Character character;

  const CharacterDetailsWidget({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          character.name ?? 'No name',
          style: const TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16.0),
        Text(
          (character.description == null ||
                  (character.description?.isEmpty ?? true))
              ? 'No description available.'
              : character.description!,
          style: const TextStyle(
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
