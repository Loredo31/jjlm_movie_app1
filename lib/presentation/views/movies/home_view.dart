import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/providers.dart';
import '../../widgets/widget.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {

  @override
  void initState() {
    super.initState();
    ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {

    final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          flexibleSpace: const FlexibleSpaceBar(
            title: CustomAppbar(),
            titlePadding: EdgeInsets.zero
            ),
        ),

        SliverList(
          delegate: SliverChildBuilderDelegate(
            (contex, index) {
            return Column(
              children: [
                MoviesSlideshow(movies: []),
                Text('Data')
                ],
              );
          }, childCount: 1),
        ),
      ],
    );
  }
}
