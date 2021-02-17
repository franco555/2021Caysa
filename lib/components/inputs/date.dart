import 'package:flutter/material.dart';

class WgDate extends StatefulWidget {
  final String titulo;
  const WgDate({
    Key key,
    this.titulo,
  }) : super(key: key);
  @override
  _WgDateState createState() => _WgDateState();
}

class _WgDateState extends State<WgDate> {
 
 DateTime date=DateTime.now();
  Future<Null> selectTimePicker(BuildContext context) async{
    final DateTime picker=await showDatePicker(
      context: context,
      initialDate: date, 
      firstDate: DateTime(2000), 
      lastDate: DateTime(2030),
    );
    if(picker !=null && picker !=date){
      setState(() {
        date=picker;
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0 ,vertical: 5),
      child: Container(
        padding: EdgeInsets.only(left: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:BorderRadius.all(Radius.circular(30.0),),
        ),
        child: _inputDate(),
      ),
    );
  }

  Widget _inputDate(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.titulo, style: TextStyle(fontSize: 10,),),
            Text("${date.day} / ${date.month} / ${date.year}", style: TextStyle(fontSize: 16,),),
          ],
        ),            
        IconButton(
            icon: Icon(Icons.calendar_today), 
            color: Colors.black45,
            onPressed:   (){
            selectTimePicker(context);
          },
        ),
      ],
    );
  }
}
