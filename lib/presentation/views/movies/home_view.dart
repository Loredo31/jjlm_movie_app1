import 'package:flutter/material.dart';
import '../../widgets/widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
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
