import 'package:flutter/material.dart';

class DatePickerGeneric extends StatefulWidget {

  final String titulo;
  const DatePickerGeneric({
    Key key,
    this.titulo,
  }) : super(key: key);

  @override
  _DatePickerGenericState createState() => _DatePickerGenericState();
}

class _DatePickerGenericState extends State<DatePickerGeneric> {
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
      padding: const EdgeInsets.only(bottom:15,left: 10,right: 10),
      child: Container(
        padding: const EdgeInsets.only(left: 10,right: 0),
        decoration: BoxDecoration(
          border: Border(
                bottom: BorderSide(
                  color: Colors.blue,
                  width: 1
                )
              )
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("${date.day} / ${date.month} / ${date.year}", style: TextStyle(fontSize: 16),),
            IconButton(
                icon: Icon(Icons.calendar_today), 
                color: Colors.black45,
                onPressed:   (){
                selectTimePicker(context);
              },
            ),
          
          ],
        )
      ),
    );
  }
}