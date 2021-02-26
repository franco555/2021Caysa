import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:flutter/material.dart';

class ModalConfirmation extends StatelessWidget {

  final Function fn;
  final String titulo;
  final String subTitulo;
  const ModalConfirmation({
    Key key,
    this.titulo,
    this.subTitulo,
    this.fn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(titulo,style: TextStyle(fontSize: 24),),
              SizedBox(height: 5,),
              Text(subTitulo,style: TextStyle(fontSize: 16),),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(Icons.check), 
                    color: CFr().getColorAzul400(),
                    onPressed: fn
                  ),
                  IconButton(
                    icon: Icon(Icons.close), 
                    color: CFr().getColorTextBtnSalir(),
                    onPressed:  () => Navigator.of(context).pop(),
                  ),
                ],
              )
            ],
          ),
    );
  }
}
