import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {

  final String imagen;
  final String titulo;
  final String estado;
  final double precioUnitario;
  final double cantidad;
  final double precioTotal;

  const CardProduct({
    Key key,
    this.imagen,
    this.titulo,
    this.estado,
    this.precioUnitario,
    this.cantidad,
    this.precioTotal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      color: Colors.white,
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
                      _containerDescription('Cantidad: ','$cantidad')
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '\$ $precioTotal',
                    style: TextStyle(
                        color: CFr().getColorTextPrecioTotalCard(),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400),
                  ),

                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.edit, color: CFr().getColorIconoEditar(),),
                      ),
                      Container(width: 1,height: 25,color: Colors.black26,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.remove_circle_outline, color: CFr().getColorTextBtnSalir(),),
                      ),
                    ],
                  )
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