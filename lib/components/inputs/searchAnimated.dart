import 'package:flutter/material.dart';

class SearchAnimated extends StatefulWidget {
  @override
  _SearchAnimatedState createState() => _SearchAnimatedState();
}

class _SearchAnimatedState extends State<SearchAnimated> {
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.0 ,vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:BorderRadius.all(Radius.circular(30.0),),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 14.0),
            hintText: "Buscar",
            suffixIcon: Material(
              elevation: 3.0,
              borderRadius: BorderRadius.all(Radius.circular(30.0),),
              child: InkWell(
                onTap: () {},
                child: Icon(Icons.search,color: Colors.black,),
              ),
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
