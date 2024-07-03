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
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CharacterDetailsPage(),
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
class CharacterDetailsRoute extends PageRouteInfo<void> {
  const CharacterDetailsRoute({List<PageRouteInfo>? children})
      : super(
          CharacterDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'CharacterDetailsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
