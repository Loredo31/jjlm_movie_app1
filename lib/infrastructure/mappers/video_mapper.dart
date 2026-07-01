import 'package:jjlm_movie_app/infrastructure/models/moviedb/moviedb_videos_response.dart';
import '../../domain/domain.dart';

class VideoMapper {

  static Video movieDbVideoToEntity (Result video) => Video (
    id: video.id,
    name: video.name,
    youtubeKey: video.key,
    publishedAt: video.publishedAt,
  );
}