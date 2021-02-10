import 'package:flutter/material.dart';

class WgProgressbar extends StatelessWidget {
  final IconData icono; 
  final String titulo;
  final int monto;
  final int porcentaje;

   const WgProgressbar({
    Key key,
    this.icono,
    this.titulo,
    this.monto,
    this.porcentaje,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      height: 85,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icono, color: Color(0xFF00B686),),
                  SizedBox( width: 10,),
                  Text(titulo, style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, ),),
                ],
              ),
              Row(
                children: [
                  Text("\$$monto",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),),
                  SizedBox(width: 10, ),
                  Text("($porcentaje%)",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey),)
                ],
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              Container(
                height: 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.grey.shade300),
              ),
              Container(
                height: 5,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Color(0XFF00B686)),
              ),
            ],
          )
        ],
      ),
    );
  
  }
}