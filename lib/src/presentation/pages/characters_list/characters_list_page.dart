import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:im_mottu_mobile/src/infrastructure/navigation/routers/app_router.dart';
import '../../../../locator.dart';
import 'state/state.dart';
import '../../widgets/character_card_widget.dart';
import 'widgets/search_bar.dart';
import 'widgets/order_by_dropdown.dart';

@RoutePage()
class CharactersListPage extends StatelessWidget {
  final _viewModel = locator<CharactersListPageViewModel>();
  final ScrollController _scrollController = ScrollController();

  CharactersListPage({super.key}) {
    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        bool isBottom = _scrollController.position.pixels != 0;
        if (isBottom) {
          _viewModel.loadMore();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _viewModel.loadData();
    });

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Image.asset('assets/images/logo.png', height: 30.0),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SearchBar(onSearch: (term) => _viewModel.setSearchTerm(term)),
            BlocBuilder<CharactersListPageViewModel, CharactersListPageState>(
              bloc: _viewModel,
              builder: (context, state) {
                if (state is CharactersListPageDataState) {
                  return OrderByDropdown(
                    currentOrderBy: state.orderBy,
                    onOrderByChanged: (orderBy) =>
                        _viewModel.setOrderBy(orderBy),
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
            Expanded(
              child: Center(
                child: BlocBuilder<CharactersListPageViewModel,
                    CharactersListPageState>(
                  bloc: _viewModel,
                  builder: (context, state) {
                    if (state is CharactersListPageLoadingState) {
                      return const CircularProgressIndicator();
                    } else if (state is CharactersListPageDataState) {
                      return RefreshIndicator(
                        onRefresh: () => _viewModel.loadData(),
                        child: GridView.builder(
                          controller: _scrollController,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 8.0,
                            childAspectRatio: 0.75,
                          ),
                          itemCount: state.isLoadingMore
                              ? state.characters.length + 1
                              : state.characters.length,
                          itemBuilder: (context, index) {
                            if (index >= state.characters.length) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            } else {
                              return CharacterCard(
                                character: state.characters[index],
                                onTap: () => context.router.push(
                                  CharacterDetailsRoute(
                                    character: state.characters[index],
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      );
                    } else if (state is CharactersListPageErrorState) {
                      return const Text('Failed to load characters');
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
