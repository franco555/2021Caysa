String validateNumero(String value) {
    if (value.length == 0) {
      return "Ingrese cantidad";
    }
    return null;
  }
  String validatePrecio(String value) {
    if (value.length == 0) {
      return "Ingrese precio unidad";
    }
    return null;
  }

  String validatePrecioTotal(String value) {
    if (value.length == 0) {
      return "Ingrese precio total";
    }
    return null;
  }
  
/*String validateName(String value) {
 String pattern = r'(^[a-zA-Z ]*$)';
 RegExp regExp = new RegExp(pattern);
 if (value.length == 0) {
   return "El nombre es necesario";
 } else if (!regExp.hasMatch(value)) {
   return "El nombre debe de ser a-z y A-Z";
 }
 return null;
}

String validateMobile(String value) {
 String patttern = r'(^[0-9]*$)';
 RegExp regExp = new RegExp(patttern);
 if (value.length == 0) {
   return "El telefono es necesariod";
 } else if (value.length != 10) {
   return "El numero debe tener 10 digitos";
 }
 return null;
}

String validateEmail(String value) {
 String pattern =
     r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
 RegExp regExp = new RegExp(pattern);
 if (value.length == 0) {
   return "El correo es necesario";
 } else if (!regExp.hasMatch(value)) {
   return "Correo invalido";
 } else {
   return null;
 }
}

String validatePassword(String value) {
 print("valorrr $value passsword ${passwordCtrl.text}");
 if (value != passwordCtrl.text) {
   return "Las contraseñas no coinciden";
 }
 return null;
}*/