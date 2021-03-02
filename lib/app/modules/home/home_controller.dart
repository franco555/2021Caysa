import 'package:caysa2021/app/data/models/movie.dart';
import 'package:caysa2021/app/data/repositories/local/local_auth_repository.dart';
import 'package:caysa2021/app/data/repositories/remote/movies_repository.dart';
import 'package:caysa2021/app/routes/app_routes.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

  final LocalAuthRepository _localAuthRepository=Get.find<LocalAuthRepository>();
  final MoviesRepository _moviesRepository=Get.find<MoviesRepository>();

  List<Movie> _movies=[];
  List<Movie> get getMovies=>_movies;

  Future<void>logOut() async{
    await _localAuthRepository.clearSession();
    Get.offNamedUntil(AppRoutes.LOGIN, (_) => false);
  }

  @override
  void onReady(){
    load();
  }

  Future<void>load()async{
    try {
      _movies =await _moviesRepository.getTopMovies();
      update();
    } catch (e) {
      print(e);
    }
  }

}