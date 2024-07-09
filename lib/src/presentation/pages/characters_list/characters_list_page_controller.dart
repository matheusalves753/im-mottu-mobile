import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:im_mottu_mobile/src/domain/entities/character.dart';
import 'package:im_mottu_mobile/src/domain/entities/order_by.dart';
import 'package:im_mottu_mobile/src/domain/usecases/get_characters_use_case.dart';

class CharactersListPageController extends GetxController {
  final GetCharactersUseCase _getCharactersUseCase;
  Timer? _debounce;

  CharactersListPageController(this._getCharactersUseCase);

  final ScrollController scrollController = ScrollController();

  var characters = <Character>[].obs;
  var isLoading = false.obs;
  var isLoadingMore = false.obs;
  var nameStartsWith = ''.obs;
  var orderBy = OrderBy.name.obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
    scrollController.addListener(() {
      if (scrollController.position.atEdge &&
          scrollController.position.pixels != 0) {
        loadMore();
      }
    });
  }

  @override
  void onClose() {
    scrollController.dispose();
    _debounce?.cancel();
    super.onClose();
  }

  Future<void> loadData({bool isLoadMore = false}) async {
    try {
      if (isLoadMore) {
        isLoadingMore.value = true;
      } else {
        isLoading.value = true;
      }

      final data = await _getCharactersUseCase(
        offset: isLoadMore ? characters.length : 0,
        limit: 20,
        nameStartsWith: nameStartsWith.value,
        orderBy: orderBy.value,
      );

      if (isLoadMore) {
        characters.addAll(data);
        isLoadingMore.value = false;
      } else {
        characters.value = data;
        isLoading.value = false;
      }
    } catch (e) {
      isLoading.value = false;
      isLoadingMore.value = false;
    }
  }

  void setSearchTerm(String term) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 1000), () {
      nameStartsWith.value = term;
      loadData();
    });
  }

  Future<void> setOrderBy(OrderBy order) async {
    orderBy.value = order;
    await loadData();
  }

  void loadMore() {
    if (!isLoadingMore.value) {
      loadData(isLoadMore: true);
    }
  }
}
