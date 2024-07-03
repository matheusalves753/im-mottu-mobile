import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../locator.dart';
import 'state/state.dart';

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
        title: const Text('Characters List'),
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
                  child: ListView.builder(
                    itemCount: state.characters.length,
                    itemBuilder: (context, index) {
                      final character = state.characters[index];
                      return ListTile(
                        title: Text(character.name ?? 'No name'),
                        subtitle:
                            Text(character.description ?? 'No description'),
                        onTap: () => (),
                      );
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
    );
  }
}
