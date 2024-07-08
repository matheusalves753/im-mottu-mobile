import 'package:get/get.dart';
import 'package:im_mottu_mobile/src/domain/entities/character.dart';
import 'package:im_mottu_mobile/src/domain/usecases/get_related_characters_use_case.dart';

class CharacterDetailsPageController extends GetxController {
  final GetRelatedCharactersUseCase _getRelatedCharactersUseCase;

  CharacterDetailsPageController(this._getRelatedCharactersUseCase);

  var character = const Character().obs;
  var relatedCharacters = <Character>[].obs;
  var isLoading = false.obs;
  var hasError = false.obs;

  void loadCharacterDetails(Character character) async {
    try {
      isLoading.value = true;
      this.character.value = character;
      final related = await _getRelatedCharactersUseCase.call(character.id!);
      relatedCharacters.value = related;
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      hasError.value = true;
    }
  }
}
