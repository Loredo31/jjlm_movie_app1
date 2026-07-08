import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jjlm_movie_app/presentation/providers/providers.dart';

class PopularView extends ConsumerStatefulWidget {
  const PopularView({super.key});

  @override
  ConsumerState<PopularView> createState() => _PopularViewState();
}

class _PopularViewState extends ConsumerState<PopularView> with AutomaticKeepAliveClientMixin {
  
  @override
  Widget build(BuildContext context) {
    super.build(context);

    final popularMovies = ref.watch(nowPlayingMoviesProvider);

    if (popularMovies.isEmpty) {
      return Center(child: CircularProgressIndicator(strokeWidth: 2));
    }
    return Placeholder();
  }

  @override
  bool get wantKeepAlive => true;
}