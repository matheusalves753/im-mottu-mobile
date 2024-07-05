import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter/scheduler.dart';
import 'package:im_mottu_mobile/src/domain/entities/character.dart';
import '../../../../locator.dart';
import 'state/state.dart';
import 'widgets/character_image_widget.dart';
import 'widgets/character_details_widget.dart';
import 'widgets/related_characters_widget.dart';

@RoutePage()
class CharacterDetailsPage extends StatelessWidget {
  final Character character;
  final _viewModel = locator<CharacterDetailsPageViewModel>();

  CharacterDetailsPage({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _viewModel.loadCharacterDetails(character);
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(character.name ?? 'Character Detail'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CharacterImageWidget(character: character),
                const SizedBox(height: 16.0),
                CharacterDetailsWidget(character: character),
                const SizedBox(height: 16.0),
                RelatedCharactersWidget(viewModel: _viewModel),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
