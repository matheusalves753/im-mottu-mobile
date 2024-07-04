import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:im_mottu_mobile/src/domain/domain.dart';

@RoutePage()
class CharacterDetailsPage extends StatelessWidget {
  final Character character;

  const CharacterDetailsPage({
    super.key,
    required this.character,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name ?? 'Character Detail'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
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
              const SizedBox(height: 16.0),
              Text(
                character.name ?? 'No name',
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 16.0),
              Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    (character.description == null ||
                            (character.description?.isEmpty ?? true))
                        ? 'No description available.'
                        : character.description!,
                    style: const TextStyle(
                      fontSize: 16.0,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
