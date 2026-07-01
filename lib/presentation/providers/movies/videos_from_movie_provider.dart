import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jjlm_movie_app/presentation/providers/providers.dart';

final videosFromMovieProvider = 
FutureProvider.family((ref, String movieId) {
  final movierepositoryProvider = ref.watch(movieRepositoryProvider);
  return movierepositoryProvider.getYoutubeVideoById(movieId);
}); 