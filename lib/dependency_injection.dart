import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:im_mottu_mobile/src/infrastructure/infrastructure.dart';
import 'src/data/data.dart';
import 'src/domain/domain.dart';
import 'src/presentation/presentation.dart';

class DependencyInjection {
  static void init() {
    _setupServices();
    _setupDataSources();
    _setupRepositories();
    _setupUseCases();
    _setupControllers();
  }

  static void _setupServices() {
    Get.put<HiveService>(
      HiveService(),
      permanent: true,
    );
    Get.put<NetworkService>(
      NetworkService(),
      permanent: true,
    );
  }

  static void _setupDataSources() {
    Get.lazyPut<RemoteDataSource>(
      () => RemoteDataSourceImpl(
        http.Client(),
        Get.find<HiveService>(),
      ),
    );
  }

  static void _setupRepositories() {
    Get.lazyPut<CharacterRepository>(
      () => CharacterRepositoryImpl(
        Get.find<RemoteDataSource>(),
      ),
    );
  }

  static void _setupUseCases() {
    Get.lazyPut<GetCharactersUseCase>(
      () => GetCharactersUseCaseImpl(
        Get.find<CharacterRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<GetRelatedCharactersUseCase>(
      () => GetRelatedCharactersUseCaseImpl(
        Get.find<CharacterRepository>(),
      ),
      fenix: true,
    );
  }

  static void _setupControllers() {
    Get.lazyPut<CharactersListPageController>(
      () => CharactersListPageController(
        Get.find<GetCharactersUseCase>(),
      ),
      fenix: true,
    );
    Get.lazyPut<CharacterDetailsPageController>(
      () => CharacterDetailsPageController(
        Get.find<GetRelatedCharactersUseCase>(),
      ),
      fenix: true,
    );
  }
}
