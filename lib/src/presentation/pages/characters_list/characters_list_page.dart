import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:im_mottu_mobile/src/infrastructure/navigation/routers/app_router.dart';

import '../../../../locator.dart';
import 'state/state.dart';
import 'widgets/character_card_widget.dart';

@RoutePage()
class CharactersListPage extends StatelessWidget {
  final _viewModel = locator<CharactersListPageViewModel>();

  CharactersListPage({super.key});

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _viewModel.loadData();
    });

    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo.png', height: 30.0),
      ),
      body: SafeArea(
        child: Center(
          child:
              BlocBuilder<CharactersListPageViewModel, CharactersListPageState>(
            bloc: _viewModel,
            builder: (context, state) {
              if (state is CharactersListPageLoadingState) {
                return const CircularProgressIndicator();
              } else if (state is CharactersListPageDataState) {
                return RefreshIndicator(
                  onRefresh: _viewModel.loadData,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                      childAspectRatio: 0.75,
                    ),
                    itemCount: state.characters.length,
                    itemBuilder: (context, index) => CharacterCard(
                      character: state.characters[index],
                      onTap: () => context.router.push(
                        CharacterDetailsRoute(
                          character: state.characters[index],
                        ),
                      ),
                    ),
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
    );
  }
}
