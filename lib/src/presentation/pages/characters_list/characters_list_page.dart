import 'package:flutter/material.dart' hide SearchBar;
import 'package:get/get.dart';
import 'package:im_mottu_mobile/src/domain/entities/network_status.dart';
import 'package:im_mottu_mobile/src/infrastructure/navigation/routers/app_routes.dart';
import 'package:im_mottu_mobile/src/infrastructure/services/network_service.dart';
import '../../widgets/character_card_widget.dart';
import 'characters_list_page_controller.dart';
import 'widgets/widgets.dart';

class CharactersListPage extends StatelessWidget {
  final CharactersListPageController _controller =
      Get.find<CharactersListPageController>();

  CharactersListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Image.asset('assets/images/logo.png', height: 30.0),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SearchBar(onSearch: (term) => _controller.setSearchTerm(term)),
            Obx(() {
              return OrderByDropdown(
                currentOrderBy: _controller.orderBy.value,
                onOrderByChanged: (orderBy) => _controller.setOrderBy(orderBy),
              );
            }),
            Obx(
              () {
                final NetworkService networkService =
                    Get.find<NetworkService>();
                return networkService.networkStatus ==
                        NetworkStatus.disconnected
                    ? const Text(
                        'You are offline',
                      )
                    : const SizedBox.shrink();
              },
            ),
            Expanded(
              child: Center(
                child: Obx(() {
                  if (_controller.isLoading.value &&
                      _controller.characters.isEmpty) {
                    return const CircularProgressIndicator();
                  } else if (_controller.characters.isNotEmpty) {
                    return RefreshIndicator(
                      onRefresh: () async => _controller.loadData(),
                      child: GridView.builder(
                        controller: _controller.scrollController,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8.0,
                          mainAxisSpacing: 8.0,
                          childAspectRatio: 0.75,
                        ),
                        itemCount: _controller.isLoadingMore.value
                            ? _controller.characters.length + 1
                            : _controller.characters.length,
                        itemBuilder: (context, index) {
                          if (index >= _controller.characters.length) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          } else {
                            return CharacterCard(
                              character: _controller.characters[index],
                              onTap: () => Get.toNamed(
                                AppRoutes.characterDetails,
                                arguments: _controller.characters[index],
                              ),
                            );
                          }
                        },
                      ),
                    );
                  } else {
                    return const Text('Failed to load characters');
                  }
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
