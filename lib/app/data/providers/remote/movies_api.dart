
import 'package:caysa2021/app/data/models/movie.dart';
import 'package:caysa2021/app/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart'  hide Response;

class MoviesApi{
  final Dio dio=Get.find<Dio>();

  Future<List<Movie>> getTopMovie()async{
    final Response response=await dio.get('/movie/top_rated',
    queryParameters: {
      "api_key":Constants.THE_MOVIE_DB_API_KEY,
      "languaje":"es"
    });

    return (response.data['results'] as List).map((e) => Movie.fromJson(e)).toList();
  }
}