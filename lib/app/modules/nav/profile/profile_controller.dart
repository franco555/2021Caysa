import 'package:caysa2021/app/data/models/user.dart';
import 'package:caysa2021/app/data/repositories/local/local_auth_repository.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController{
  final LocalAuthRepository _localAuthRepository=Get.find<LocalAuthRepository>();

  Rx<UserModel> _userModel= UserModel(
    id: "0",
    name: "Franco", 
    lastname:"Caysahuana", 
    address: "La villa", 
    dni: "46002418", 
    email: "franco@gmail.com", 
    phone:"1122344991", 
    username: "Franckito", 
    password: "12345", 
  ).obs;

  RxBool _swithMode=false.obs;
  RxMap<String, dynamic> _userMap=Map<String, dynamic>().obs;

  bool get getSwith=>this._swithMode.value;

  get name=>this._userModel.value.name;
  get lastname=>this._userModel.value.lastname;
  get dni=>this._userModel.value.dni;
  get address=>this._userModel.value.address;
  get email=>this._userModel.value.email;
  get phone=>this._userModel.value.phone;
  get username=>this._userModel.value.username;

  void onNameChanged(String text){ this._userModel.value=_userModel.value.copyWith(name: text);}
  void onLastNameChanged(String text){ this._userModel.value.lastname=text;}
  void onAddressChanged(String text){ this._userModel.value.address=text;}
  void onDNIChanged(String text){this._userModel.value.dni=text;}
  void onEmailChanged(String text){ this._userModel.value.email=text;}
  void onPhoneChanged(String text){ this._userModel.value.phone=text;}
  void onUseNameChanged(String text){ this._userModel.value.username=text;}
  void onPasswordChanged(String text){ this._userModel.value.password=text;}

  /*get name=>this._userMap['name'];
  get lastname=>this._userMap['lastname'];
  get dni=>this._userMap['dni'];
  get address=>this._userMap['address'];
  get email=>this._userMap['email'];
  get phone=>this._userMap['phone'];
  get username=>this._userMap['username'];
  get password=>this._userMap['password'];

  void onNameChanged(String text){ this._userMap['name']=text;}
  void onLastNameChanged(String text){ this._userMap['lastname']=text;}
  void onAddressChanged(String text){ this._userMap['address']=text;}
  void onDNIChanged(String text){this._userMap['dni']=text;}
  void onEmailChanged(String text){ this._userMap['email']=text;}
  void onPhoneChanged(String text){ this._userMap['phone']=text;}
  void onUseNameChanged(String text){ this._userMap['username']=text;}
  void onPasswordChanged(String text){ this._userMap['password']=text;}*/

  Future<void> changeSwith() async { 
    this._swithMode.value=!_swithMode.value;
    String modo= _swithMode.value ?"Oscuro":"Claro";
    await _localAuthRepository.setModo(modo);
    getStateSwitch();
  }

  Future<void>getStateSwitch() async{
    bool modo= await (_localAuthRepository.modo);
    this._swithMode.value=modo;
  }

  void saveProfile(){
    print(_userMap['name']);
    update();
    Get.back();
  }

  

  @override
  void onReady(){
    super.onReady();
    //loadUserMap();
  }

  @override
  void onInit(){
    super.onInit();
    getStateSwitch();
    loadUser();
  }

  loadUser(){

  }

}