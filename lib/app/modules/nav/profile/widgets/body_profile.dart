import 'package:caysa2021/app/global_widgets/titles/title_with_line.dart';
import 'package:caysa2021/app/modules/nav/profile/profile_controller.dart';
import 'package:caysa2021/app/modules/nav/profile/widgets/decoration/decoration_body.dart';
import 'package:caysa2021/app/modules/nav/profile/widgets/modal_profile.dart';
import 'package:caysa2021/app/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (_)=>BackgroundProfile(
        child: SingleChildScrollView(
          child:Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child:Column(
                children: [
                  TituloWithLine(icono: Icons.history, titulo: "Datos personales",color: CF.colorInfo(), fsize: 18.0,),
                  Padding(
                    padding: const EdgeInsets.only(left:20,top:1,right: 10,bottom:1),
                    child: Column(
                      children: [
                        Obx(
                          ()=>rowDatosPersonales("Nombre",_.name??"s",_.onNameChanged,_.saveProfile)
                        )
                        ,
                        rowDatosPersonales("Apellido",_.lastname??"s",null,_.saveProfile),
                        rowDatosPersonales("DNI",_.dni??"s",null,_.saveProfile),
                        rowDatosPersonales("Direcion",_.address??"s",null,_.saveProfile),
                        rowDatosPersonales("Email",_.email??"s",null,_.saveProfile),
                        rowDatosPersonales("Telefono",_.phone??"s",null,_.saveProfile),
                      ],
                    ),
                  ),
                  TituloWithLine(icono: Icons.history, titulo: "Cuenta", color: CF.colorInfo(),fsize: 18.0,),
                  Padding(
                    padding: const EdgeInsets.only(left:20,top:1,right: 10,bottom:1),
                    child: Column(
                      children: [
                        rowDatosPersonales("Usuario",_.username??"s",null,_.saveProfile),
                        rowDatosPersonales("Password","****",null,_.saveProfile),
                      ],
                    ),
                  ),
                  TituloWithLine(icono: Icons.history, titulo: "Apariencia",color: CF.colorInfo(),fsize: 18.0, ),
                  Padding(
                    padding: const EdgeInsets.only(left:20,top:5,right: 10,bottom:5),
                    child:Obx(()=>  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Estás en Modo ${_.getSwith?'Oscuro':'Claro'}", style: TextStyle(color: CF.colorSuccess2()),),
                        Switch(
                            value:_.getSwith,
                            onChanged:(value)=> _.changeSwith(),
                            activeTrackColor: CF.colorSuccess(),
                            activeColor: CF.colorSuccess2(),
                          ),
                        ], 
                      )
                    ),
                  ),
                ],
              )
            ),
          ),
        ),
      )
    );
  }

  

  Row rowDatosPersonales(String label, String text,Function  onChange, Function onPress){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text("$label: ", style: TextStyle(color: CF.colorTextAppBar(), fontWeight: FontWeight.w500),),
            Text(text, style: TextStyle(color: CF.colorSuccess2()),),
          ],
        ),
        IconButton(icon: Icon(Icons.edit, color: CF.colorSuccess2(),), 
          onPressed: ()=>ModalProfile().getDialog(text,onChange, onPress)
        )
      ],
    );
  }
}