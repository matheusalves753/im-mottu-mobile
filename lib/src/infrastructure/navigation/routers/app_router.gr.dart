// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CharacterDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CharacterDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CharacterDetailsPage(
          key: args.key,
          character: args.character,
        ),
      );
    },
    CharactersListRoute.name: (routeData) {
      final args = routeData.argsAs<CharactersListRouteArgs>(
          orElse: () => const CharactersListRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CharactersListPage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [CharacterDetailsPage]
class CharacterDetailsRoute extends PageRouteInfo<CharacterDetailsRouteArgs> {
  CharacterDetailsRoute({
    Key? key,
    required Character character,
    List<PageRouteInfo>? children,
  }) : super(
          CharacterDetailsRoute.name,
          args: CharacterDetailsRouteArgs(
            key: key,
            character: character,
          ),
          initialChildren: children,
        );

  static const String name = 'CharacterDetailsRoute';

  static const PageInfo<CharacterDetailsRouteArgs> page =
      PageInfo<CharacterDetailsRouteArgs>(name);
}

class CharacterDetailsRouteArgs {
  const CharacterDetailsRouteArgs({
    this.key,
    required this.character,
  });

  final Key? key;

  final Character character;

  @override
  String toString() {
    return 'CharacterDetailsRouteArgs{key: $key, character: $character}';
  }
}

/// generated route for
/// [CharactersListPage]
class CharactersListRoute extends PageRouteInfo<CharactersListRouteArgs> {
  CharactersListRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CharactersListRoute.name,
          args: CharactersListRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CharactersListRoute';

  static const PageInfo<CharactersListRouteArgs> page =
      PageInfo<CharactersListRouteArgs>(name);
}

class CharactersListRouteArgs {
  const CharactersListRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'CharactersListRouteArgs{key: $key}';
  }
}
