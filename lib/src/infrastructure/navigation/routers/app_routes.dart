import 'package:get/get.dart';
import 'package:im_mottu_mobile/src/presentation/pages/character_details/character_details_page.dart';
import 'package:im_mottu_mobile/src/presentation/pages/characters_list/characters_list_page.dart';

import '../../../domain/entities/entities.dart';

class AppRoutes {
  static const String charactersList = '/';
  static const String characterDetails = '/character-details';

  static List<GetPage> routes = [
    GetPage(
      name: charactersList,
      page: () => CharactersListPage(),
    ),
    GetPage(
      name: characterDetails,
      page: () => CharacterDetailsPage(character: Get.arguments as Character),
    ),
  ];
}
