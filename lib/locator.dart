import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import 'src/data/data.dart';
import 'src/domain/domain.dart';
import 'src/presentation/presentation.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  _setupDataSources();
  _setupRepositories();
  _setupUseCases();
  _setupViewModels();
}

void _setupDataSources() {
  locator.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSourceImpl(
      http.Client(),
    ),
  );
}

void _setupRepositories() {
  locator.registerLazySingleton<CharacterRepository>(
    () => CharacterRepositoryImpl(
      locator<RemoteDataSource>(),
    ),
  );
}

void _setupUseCases() {
  locator.registerFactory<GetCharactersUseCase>(
    () => GetCharactersUseCaseImpl(
      locator<CharacterRepository>(),
    ),
  );
}

void _setupViewModels() {
  locator.registerFactory<CharactersListPageViewModel>(
    () => CharactersListPageViewModel(
      locator<GetCharactersUseCase>(),
    ),
  );
}
