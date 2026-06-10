import 'package:dio/dio.dart';
import 'package:jjlm_movie_app/config/config.dart';
import 'package:jjlm_movie_app/domain/domain.dart';
import 'package:jjlm_movie_app/infrastructure/mappers/movie_mapper.dart';
import 'package:jjlm_movie_app/infrastructure/models/moviedb/moviedb_response.dart';

class MoviedbDatasourceImpl extends MoviesDatasource {

  final dio = Dio(BaseOptions(
    baseUrl: Environment.apiUrl,
    queryParameters: {
      "api_key": Environment.theMovieDbKey,
      "language": Environment.language,
    },
  ));

    @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final response = await dio.get('/movie/now_playing', 
      queryParameters: {
        "page": page,
      },
    );

    final movieDbResponse = MovieDbResponse.fromJson(response.data);
    final List<Movie> movies = movieDbResponse.results
      .map( (moviedb) => MovieMapper.movieDbToEntity(moviedb)).toList(
    );

    return movies;
  }
  
  @override
  Future<Movie> getMovieById(String id) {
    // TODO: implement getMovieById
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>> getPopular({int page = 1}) {
    // TODO: implement getPopular
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>> getSimilarMovie(String movieId) {
    // TODO: implement getSimilarMovie
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>> getTopRated({int page = 1}) {
    // TODO: implement getTopRated
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>> getUpcoming({int page = 1}) {
    // TODO: implement getUpcoming
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>> getYoutubeVideoById(String movieId) {
    // TODO: implement getYoutubeVideoById
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>> searchMovie(String query) {
    // TODO: implement searchMovie
    throw UnimplementedError();
  }

}