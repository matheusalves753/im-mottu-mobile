import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:im_mottu_mobile/src/domain/entities/character.dart';
import 'package:im_mottu_mobile/src/domain/entities/order_by.dart';

part 'characters_list_page_state.freezed.dart';

@freezed
class CharactersListPageState with _$CharactersListPageState {
  const factory CharactersListPageState.data({
    required List<Character> characters,
    String? nameStartsWith,
    @Default(OrderBy.name) OrderBy orderBy,
  }) = CharactersListPageDataState;

  const factory CharactersListPageState.loading() =
      CharactersListPageLoadingState;

  const factory CharactersListPageState.error() = CharactersListPageErrorState;
}
