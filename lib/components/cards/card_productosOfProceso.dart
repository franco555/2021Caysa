import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:flutter/material.dart';

class CardProductosOfProceso extends StatelessWidget {

  final String imagen;
  final String titulo;
  final String estado;
  final double precioUnitario;
  final double stock;

  const CardProductosOfProceso({
    Key key,
    this.imagen,
    this.titulo,
    this.estado,
    this.precioUnitario,
    this.stock,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color:CFr().getColorLinea() ,width: 1 ))
      ),
      margin:EdgeInsets.fromLTRB(0, 0, 0, 1) ,
      padding:EdgeInsets.only(right: 20, top: 10.0, bottom: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  _containerHome(AssetImage(imagen)),
                  Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: <Widget>[
                      Text( titulo,style: CFr().tsTextTituloCard(CFr().getColorTextTituloCard(),20.0),),
                      _containerDescription('Estado:', estado),
                      _containerDescription('P. Unitario:','\$ $precioUnitario'),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'Stock',
                    style: TextStyle(
                        color: CFr().getColorTextTituloCard(),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400),
                  ),
                  Text('$stock', style: TextStyle(color: CFr().getColorAzul500(),fontSize: 24.0,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.add_circle_outline_outlined, 
                      color: CFr().getColorIconoEditar(),
                      size: 26,),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _containerDescription(label, pu,){
    return  Container(
      margin: EdgeInsets.only(top: 5.0),
      child: Row(
        children: [
          Text(label,),
          SizedBox(width: 5,),
          Text(pu, style: TextStyle(fontWeight: FontWeight.w500),),
        ],
      ),
    );
  } 


  Widget _containerHome(AssetImage image) {
    return Container(
      height: 60.0,
      width:60.0,
      margin: EdgeInsets.only(left: 15.0, top: 5.0, right: 15.0, bottom: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.blueGrey,
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}