import 'package:flutter/material.dart';
import 'package:im_mottu_mobile/src/domain/entities/character.dart';

class CharacterImageWidget extends StatelessWidget {
  final Character character;

  const CharacterImageWidget({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: SizedBox(
        width: double.infinity,
        height: 250.0,
        child: FadeInImage.assetNetwork(
          placeholder: 'assets/images/logo.png',
          image:
              '${character.thumbnail?.path ?? ''}.${character.thumbnail?.extension ?? ''}',
          fit: BoxFit.cover,
          imageErrorBuilder: (context, error, stackTrace) {
            return const Icon(Icons.broken_image, size: 50.0);
          },
        ),
      ),
    );
  }
}
