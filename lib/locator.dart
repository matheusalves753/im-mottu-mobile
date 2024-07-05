import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:im_mottu_mobile/src/infrastructure/services/hive_service.dart';

import 'src/data/data.dart';
import 'src/domain/domain.dart';
import 'src/presentation/presentation.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  _setupServices();
  _setupDataSources();
  _setupRepositories();
  _setupUseCases();
  _setupViewModels();
}

void _setupServices() {
  locator.registerSingleton<HiveService>(
    HiveService(),
  );
}

void _setupDataSources() {
  locator.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSourceImpl(
      http.Client(),
      locator<HiveService>(),
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
  locator.registerFactory<GetRelatedCharactersUseCase>(
    () => GetRelatedCharactersUseCaseImpl(
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
  locator.registerFactory<CharacterDetailsPageViewModel>(
    () => CharacterDetailsPageViewModel(
      locator<GetRelatedCharactersUseCase>(),
    ),
  );
}
