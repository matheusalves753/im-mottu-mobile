import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:im_mottu_mobile/src/domain/entities/order_by.dart';
import '../../../../domain/usecases/get_characters_use_case.dart';
import 'characters_list_page_state.dart';

class CharactersListPageViewModel extends Cubit<CharactersListPageState> {
  final GetCharactersUseCase _getCharactersUseCase;

  CharactersListPageViewModel(this._getCharactersUseCase)
      : super(const CharactersListPageState.loading());

  Future<void> loadData({
    int offset = 0,
    int limit = 20,
    String? nameStartsWith,
    OrderBy orderBy = OrderBy.name,
  }) async {
    try {
      emit(const CharactersListPageState.loading());
      final data = await _getCharactersUseCase(
        offset: offset,
        limit: limit,
        nameStartsWith: nameStartsWith,
        orderBy: orderBy,
      );
      emit(CharactersListPageState.data(
        characters: data,
        nameStartsWith: nameStartsWith,
        orderBy: orderBy,
      ));
    } catch (e) {
      emit(const CharactersListPageState.error());
    }
  }

  void setSearchTerm(String nameStartsWith) {
    final currentState = state;
    if (currentState is CharactersListPageDataState) {
      loadData(
        nameStartsWith: nameStartsWith,
        orderBy: currentState.orderBy,
      );
    }
  }

  void setOrderBy(OrderBy orderBy) {
    final currentState = state;
    if (currentState is CharactersListPageDataState) {
      loadData(
        nameStartsWith: currentState.nameStartsWith,
        orderBy: orderBy,
      );
    }
  }
}
