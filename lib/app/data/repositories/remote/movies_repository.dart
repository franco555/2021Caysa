
import 'package:caysa2021/app/data/models/movie.dart';
import 'package:caysa2021/app/data/providers/remote/movies_api.dart';
import 'package:get/get.dart';

class MoviesRepository{
  final MoviesApi _moviesApi=Get.find<MoviesApi>();

  Future <List<Movie>> getTopMovies()=>_moviesApi.getTopMovie();
}