import 'package:caysa2021/components/other/tituloSeccionWithIcono.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:caysa2021/constants/constants.dart';
import 'package:flutter/material.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(      
            mainAxisAlignment: MainAxisAlignment.spaceBetween,      
            children: [
              Text("data"),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                width: size.width * 0.45,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                width: size.width * 0.45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.05),
                      blurRadius: 8,
                      spreadRadius: 3,
                      offset: Offset(0, 10),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  )
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.arrow_upward, color: Color(0XFF00838F),),
                                  SizedBox(width: 10,),
                                  Text( "Ventas",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  )
                                  
                                ],
                              ),
                              Text(
                                "\$2 170.90",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: Colors.black87),
                              )
                            ],
                          ),
                          SizedBox(height: 15,),
                          Container(height: 1, color: Colors.grey),
                          SizedBox(height: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  
                                  Icon(
                                    Icons.arrow_downward,
                                    color: Color(0XFF00838F),
                                  ),SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Compras",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  
                                ],
                              ),
                              Text(
                                "\$1 450.10",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: Colors.black87),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "ver detalles",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF00B686)),
                        ),
                      )
                    ],
                  ),
              ),
              
            ],
          ),
          Container(
            height:0,
            color: CFr().getColorBtnRegister(),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
          ),
          TituloSeccionWithIcono(
            icono: Icons.history,
            titulo: "Historial",
            color: CFr().getColorBtnLogin(),
            fsize: 18.0,
          ),
          Container(
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: getPadding20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  
                  //WgProgressbar(icono: Icons.fastfood, titulo:"Food",monto: 120,porcentaje: 20),

                   
                  
                  
/*
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.arrow_upward, color: Color(0XFF00838F),),
                                  SizedBox(width: 10,),
                                  Text( "Ventas",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  )
                                  
                                ],
                              ),
                              Text(
                                "\$2 170.90",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: Colors.black87),
                              )
                            ],
                          ),
                          SizedBox(height: 15,),
                          Container(height: 1, color: Colors.grey),
                          SizedBox(height: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  
                                  Icon(
                                    Icons.arrow_downward,
                                    color: Color(0XFF00838F),
                                  ),SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Compras",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  
                                ],
                              ),
                              Text(
                                "\$1 450.10",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: Colors.black87),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "ver detalles",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF00B686)),
                        ),
                      )
                    ],
                  ),*/
                ],
              ),
            )
          ),
        
          //Categories(),
          /*Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: kDefaultPaddin,
                    crossAxisSpacing: kDefaultPaddin,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) => ItemCard(
                        product: products[index],
                        press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                product: products[index],
                              ),
                            )),
                      )),
            ),
          ),*/
        ],
      ),
    );
  }

  
}