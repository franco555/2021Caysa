import 'package:caysa2021/app/data/models/movie.dart';
import 'package:caysa2021/app/modules/home/home_controller.dart';
import 'package:caysa2021/app/modules/home copy/local_widgets/movie_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {

 const HomePage ({Key key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_)=>Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(icon: Icon(Icons.close), onPressed: _.logOut,)
          ],
        ),
        body:Container(
              color: Colors.transparent,
              padding: EdgeInsets.all(20),
              child:
                  ListView.builder(
                    itemCount: _.getMovies.length,
                    itemBuilder: (ctx,index){
                      final Movie movie=_.getMovies[index];
                      return MovieItem(movie:movie);
                    },
                  )
        ),
      ),
    );
  }
}