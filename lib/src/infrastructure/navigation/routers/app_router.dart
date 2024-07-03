import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../presentation/pages/character_details/character_details_page.dart';
import '../../../presentation/pages/characters_list/characters_list_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: CharactersListRoute.page, initial: true),
    AutoRoute(page: CharacterDetailsRoute.page),
  ];
}
