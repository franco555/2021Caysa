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
      @required this.repitpassword,
    });

    final String id;
    final String name;
    final String lastname;
    final String address;
    final String dni;
    final String email;
    final String phone;
    String username;
    String password;
    String repitpassword;

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
      repitpassword: json["repitpassword"],
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
        "repitpassword": repitpassword,
    };
}
