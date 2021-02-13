import 'package:flutter/material.dart';

class DropDownListGeneric extends StatefulWidget {

  final String titulo;
  const DropDownListGeneric({
    Key key,
    this.titulo,
  }) : super(key: key);

  @override
  _DropDownListGenericState createState() => _DropDownListGenericState();
}

class _DropDownListGenericState extends State<DropDownListGeneric> {

  String valueChoise;
  List _listItem=[
    "Cortes","Llenado","Volteado","Costurado","Rellenado"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:15,left: 10,right: 10),
      child: Container(
        padding: const EdgeInsets.only(left: 10,right: 10),
        decoration: BoxDecoration(
          border: Border(
                bottom: BorderSide(
                  color: Colors.blue,
                  width: 1
                )
              )
        ),
        child: DropdownButton(
          hint: Text(widget.titulo,style: TextStyle(fontSize: 16.0),),
          dropdownColor: Colors.white,
          icon: Icon(Icons.arrow_drop_down),
          iconSize: 30,
          isExpanded: true,
          underline: SizedBox(),
          style: TextStyle(
            color: Colors.black,
            fontSize: 16
          ),
          value: valueChoise,
          items: _listItem.map((value){
            return DropdownMenuItem(
              value:value,
              child: Text(value),
              );
          }).toList(),
          onChanged: (value){
            setState(() {
              print(value);
              valueChoise=value;
            });
          },
        ),
      ),
    );
  }
}