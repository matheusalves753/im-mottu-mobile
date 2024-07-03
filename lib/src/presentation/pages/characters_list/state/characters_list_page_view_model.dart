import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/usecases/get_characters_use_case.dart';
import 'characters_list_page_state.dart';

class CharactersListPageViewModel extends Cubit<CharactersListPageState> {
  final GetCharactersUseCase _getCharactersUseCase;

  CharactersListPageViewModel(this._getCharactersUseCase)
      : super(const CharactersListPageState.loading());

  Future<void> loadData({
    int offset = 0,
    int limit = 20,
  }) async {
    try {
      emit(const CharactersListPageState.loading());
      final data = await _getCharactersUseCase(offset: offset, limit: limit);
      emit(CharactersListPageState.data(characters: data));
    } catch (e) {
      emit(const CharactersListPageState.error());
    }
  }
}
