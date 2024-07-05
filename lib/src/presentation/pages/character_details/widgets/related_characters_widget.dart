import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:im_mottu_mobile/src/infrastructure/navigation/routers/app_router.dart';
import 'package:im_mottu_mobile/src/presentation/widgets/character_card_widget.dart';
import 'package:im_mottu_mobile/src/presentation/pages/character_details/state/state.dart';
import 'package:auto_route/auto_route.dart';

class RelatedCharactersWidget extends StatelessWidget {
  final CharacterDetailsPageViewModel viewModel;

  const RelatedCharactersWidget({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Related Characters',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        BlocBuilder<CharacterDetailsPageViewModel, CharacterDetailsPageState>(
          bloc: viewModel,
          builder: (context, state) {
            if (state is CharacterDetailsPageLoadingState) {
              return SizedBox(
                height: 200.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: CharacterCard.placeholder(),
                    );
                  },
                ),
              );
            } else if (state is CharacterDetailsPageDataState) {
              return SizedBox(
                height: 200.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.relatedCharacters.length,
                  itemBuilder: (context, index) {
                    final relatedCharacter = state.relatedCharacters[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: CharacterCard(
                        character: relatedCharacter,
                        onTap: () => context.router.push(
                          CharacterDetailsRoute(character: relatedCharacter),
                        ),
                      ),
                    );
                  },
                ),
              );
            } else if (state is CharacterDetailsPageErrorState) {
              return const Text('Failed to load related characters');
            } else {
              return const SizedBox();
            }
          },
        ),
      ],
    );
  }
}
