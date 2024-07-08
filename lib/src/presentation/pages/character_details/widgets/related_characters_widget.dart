import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:im_mottu_mobile/src/infrastructure/navigation/navigation.dart';
import 'package:im_mottu_mobile/src/presentation/pages/character_details/character_details_page_controller.dart';
import 'package:im_mottu_mobile/src/presentation/widgets/character_card_widget.dart';

class RelatedCharactersWidget extends StatelessWidget {
  final CharacterDetailsPageController controller;

  const RelatedCharactersWidget({super.key, required this.controller});

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
        Obx(() {
          if (controller.isLoading.value) {
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
          } else if (controller.relatedCharacters.isNotEmpty) {
            return SizedBox(
              height: 200.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.relatedCharacters.length,
                itemBuilder: (context, index) {
                  final relatedCharacter = controller.relatedCharacters[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: CharacterCard(
                      character: relatedCharacter,
                      onTap: () => Get.toNamed(
                        AppRoutes.characterDetails,
                        arguments: relatedCharacter,
                        preventDuplicates: false,
                      ),
                    ),
                  );
                },
              ),
            );
          } else if (controller.hasError.value) {
            return const Text('Failed to load related characters');
          } else {
            return const SizedBox();
          }
        }),
      ],
    );
  }
}
