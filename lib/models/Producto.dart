import 'package:get/get.dart';
import 'package:meta/meta.dart' show required;

class RxProducto{
  final RxString nombre;
  final RxDouble precio;

  RxProducto({
    @required this.nombre, 
    @required this.precio
  });
}

class Producto{

  RxProducto rx;

  Producto({
    @required String nombre, 
    @required double precio
  }){this.rx=RxProducto(nombre:nombre.obs, precio: precio.obs);}

  String get name=>this.rx.nombre.value;
  double get price=>this.rx.precio.value;

  set name(String value){this.rx.nombre.value=value;}
  set price(double value){this.rx.precio.value=value;}
}