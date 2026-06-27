import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jjlm_movie_app/infrastructure/infrastructure.dart';

final actorsRepositoryProvider = Provider((ref) { 
    return MovieRepositoryImpl( MoviedbDatasourceImpl() );
});