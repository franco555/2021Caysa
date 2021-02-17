import 'package:flutter/material.dart';

class SearchAnimated extends StatefulWidget {

  final Color colorLinea;
  final Color colorIcono;
  const SearchAnimated({
    Key key,
    this.colorLinea,
    this.colorIcono,
  }) : super(key: key);

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
          border: Border.all(width: 1, color: widget.colorLinea),
          borderRadius:BorderRadius.all(Radius.circular(30.0),),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 14.0),
            hintText: "Buscar",
            suffixIcon: Material(
              color: widget.colorLinea ,
              elevation: 3.0,
              borderRadius: BorderRadius.all(Radius.circular(30.0),),
              child: InkWell(
                onTap: () {},
                child: Icon(Icons.search,color: widget.colorIcono,),
              ),
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
