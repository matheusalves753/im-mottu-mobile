import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:im_mottu_mobile/src/domain/entities/character.dart';
import 'package:im_mottu_mobile/src/presentation/pages/character_details/character_details_page_controller.dart';
import 'widgets/widgets.dart';

class CharacterDetailsPage extends StatelessWidget {
  final Character character;
  final CharacterDetailsPageController _controller =
      Get.find<CharacterDetailsPageController>();

  CharacterDetailsPage({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _controller.loadCharacterDetails(character);
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
                RelatedCharactersWidget(controller: _controller),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
