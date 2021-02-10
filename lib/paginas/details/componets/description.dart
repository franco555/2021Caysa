import 'package:caysa2021/constants/constants.dart';
import 'package:caysa2021/models/product.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: getPadding20),
      child: Text(
        product.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}