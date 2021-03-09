import 'package:meta/meta.dart' show required;

class UserModel{
    UserModel({
      @required this.id,
      @required this.name,
      @required this.lastname,
      @required this.address,
      @required this.dni,
      @required this.email,
      @required this.phone,
      @required this.username,
      @required this.password,
    });

    final String id;
    String name;
    String lastname;
    String address;
    String dni;
    String email;
    String phone;
    String username;
    String password;

    UserModel copyWith({
      String name,
      String lastname,
      String address,
      String dni,
      String email,
      String phone,
      String username,
      String password,
    }){
      return UserModel(
        id: id??this.id,
         name:name??this.name,
         lastname:lastname??this.lastname,
         address:address??this.address,
         dni:dni??this.dni,
         email:email??this.email,
         phone:phone??this.phone,
         username:username??this.username,
         password:password??this.password
      );
    }

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      id: json["id"],
      name: json["name"],
      lastname: json["lastname"],
      address: json["address"],
      dni: json["dni"],
      email: json["email"],
      phone: json["phone"],
      username: json["username"],
      password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "lastname": lastname,
        "address": address,
        "dni": dni,
        "email": email,
        "phone": phone,
        "username": username,
        "password": password,
    };
}
