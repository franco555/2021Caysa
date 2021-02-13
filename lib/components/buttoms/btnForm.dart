import 'package:flutter/material.dart';
 class BtnForm extends StatelessWidget {

    final IconData icono;
    final Color color;
    final String texto;
    final Function fn;

  const BtnForm({
    Key key,
    this.icono,
    this.color,
    this.texto,
    this.fn,
  }) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
        decoration: BoxDecoration(
          border: Border.all(
            color: color,
            width: 1
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(
              icono,
              color:color,
              size: 16.0,
            ),
            SizedBox(width: 5,),
            Text(texto,style: TextStyle(color:color, fontSize: 16),)
          ],
        ),
      ),
      onTap:fn
    );
   }
 }