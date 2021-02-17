import 'package:caysa2021/components/buttoms/btnForm.dart';
import 'package:caysa2021/components/cards/card_productosOfProceso.dart';
import 'package:caysa2021/components/inputs/textFormFieldWithIcon.dart';
import 'package:caysa2021/components/labels/labelDisable.dart';
import 'package:caysa2021/components/labels/tituloOfModal.dart';
import 'package:caysa2021/components/other/separadorHorizontal.dart';
import 'package:caysa2021/components/styles/inputDecoration.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:caysa2021/components/other/validation.dart';
import 'package:flutter/material.dart';

class ModalProcutoProceso extends StatefulWidget {

  @override
  _ModalProcutoProcesoState createState() => _ModalProcutoProcesoState();
}

class _ModalProcutoProcesoState extends State<ModalProcutoProceso> {

  bool _toogle=true;
  Size _size;
  void _toggleFavorite() {
    setState(() {
      _toogle=!_toogle;
    });
  }

  //
    String name,email,phone;

    TextEditingController password = TextEditingController();
    TextEditingController confirmpassword = TextEditingController();

    TextEditingController _cantidad = TextEditingController();
    TextEditingController _precio = TextEditingController();
    TextEditingController _precioTotal = TextEditingController();

    final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
    
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height-60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),          
          //padding: EdgeInsets.symmetric(vertical:0, horizontal: 5),
      child: _toogle ? getProcesoProducto(): getFormulario(),
    );
  }

  Widget getProcesoProducto(){
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TituloOfModal(
            titulo: "Procesos y Productos",
            subTitulo: "Seleccione un Proceso.",
            ancho: _size.width,
            icono: Icons.arrow_back_outlined,
            fn: _toggleFavorite,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: subSeccionDeModal(CFr().getColorFondo()),
              height: 130,
              child: getStories(),
          ),
          SeparadorHorizontal(
            icono: Icons.list_alt,
            color: CFr().getColorBtnLogin(),
            titulo: "Lista de Productos",
            fsize: 16.0,
          ),
          Expanded(
            child: SingleChildScrollView(                  
              child: Column(
                children: [
                  CardProductosOfProceso(
                    imagen:"assets/logo/logo_white.png",
                    titulo:"goku",
                    estado:"Pendiente",
                    precioUnitario:12,
                    stock:41,
                    fn: _toggleFavorite,
                  ),
                  CardProductosOfProceso(
                    imagen:"assets/logo/logo_white.png",
                    titulo:"goku",
                    estado:"Pendiente",
                    precioUnitario:12,
                    stock:41,
                    fn: _toggleFavorite,
                  ),
                  
                ],
              ),
            ),
          ),
        ],
      );
  }

  Widget getFormulario(){
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TituloOfModal(
            titulo: "Formulario",
            subTitulo: "Complete los datos.",
            ancho: _size.width,
            icono: Icons.arrow_back_outlined,
            fn: _toggleFavorite,
          ),
          
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Form(
                    key: _formkey,
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      LabelDisable(
                        producto:"Vegeta",
                        proceso:"Costura"
                      ),
                      TextFormFieldWithIconGeneric(
                        icono: Icons.monetization_on,
                        nombre: "Precio Unidad",
                        placeholder: "\$/ 00.0",
                        isNum:true,
                        controller: _precio,
                        guardar:(value){_precio=value;},
                        validacion:validatePrecio,
                      ),
                      TextFormFieldWithIconGeneric(
                        icono: Icons.format_list_numbered_sharp,
                        nombre: "Cantidad",
                        placeholder: "0",
                        isNum:true,
                        controller: _cantidad,
                        guardar:(value){_cantidad = value;},
                        validacion: validateNumero,
                      ),
                      TextFormFieldWithIconGeneric(
                        icono: Icons.monetization_on_outlined,
                        nombre: "Total",
                        placeholder:  "\$/ 00.0",
                        isNum:true,
                        controller: _precioTotal,
                        guardar:(value){_precioTotal =value;},
                        validacion: validatePrecioTotal,
                      ),
                      //DatePickerGeneric()
                    ]),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BtnForm(
                        texto:"Agregar" ,
                        color: CFr().getColorAzul400(),
                        icono: Icons.save,
                        fn: (){ save();},
                      ),
                      BtnForm(
                        texto:"Cancelar" ,
                        color: CFr().getColorTextBtnSalir(),
                        icono: Icons.close,
                        fn: _toggleFavorite,
                      ),
                    ],
                  )
                ],
              )
              
            ),
          ),
        ],
      );
  }

  save() {
    if (_formkey.currentState.validate()) {
      print("Cantidad $_cantidad");
      //_formkey.currentState.reset();
    }
  }


   Widget getStories() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: getUserStories()
    );
  }

  List<Widget> getUserStories() {
    List<Widget> stories = [];
    for (User follower in user.following) {
      stories.add(getStory(follower));
    }
    return stories;
  }

   Widget getStory(User follower) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            width: 80,
            child: Stack(
              alignment: Alignment(0, 0),
              children: <Widget>[
                Container(
                  height: 80,
                  width: 80,
                  child: CircleAvatar(
                    backgroundColor: follower.hasStory ? Colors.red : Colors.grey,
                  ),
                ),
                Container(
                  height: 77,
                  width: 77,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                  ),
                ),
                Container(
                  height: 75,
                  width: 75,
                  child: CircleAvatar(
                    backgroundImage: follower.profilePicture,
                  ),
                ),
                FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  onPressed: () {

                  },
                )
              ],
            )
          ),
          SizedBox(height: 3,),
          Text(follower.username,style: TextStyle(color: CFr().getColorTextNavBar()),)
        ],
      ),
    );
  }
}

class User {
  String username;
  List<Post> posts;
  AssetImage profilePicture;
  List<User> followers;
  List<User> following;
  List<Post> savedPosts;
  bool hasStory;

  User(this.username, this.profilePicture, this.followers, this.following, this.posts, this.savedPosts, this.hasStory);
}

class Post {
  AssetImage image;
  String description;
  User user;
  List<User> likes;
  List<Comment> comments;
  DateTime date;
  bool isLiked;
  bool isSaved;

  Post(this.image, this.user, this.description, this.date, this.likes, this.comments, this.isLiked, this.isSaved);
}

class Comment {
  String comment;
  User user;
  DateTime dateOfComment;
  bool isLiked;
  Comment(this.user, this.comment, this.dateOfComment, this.isLiked);
}

Post post1 = new Post(
  new AssetImage('assets/logo/logo_white.png'), 
  user, "My first post", DateTime.now(), [follower1, follower2, follower3], [], false, false);
final User user = new User('kallehallden', AssetImage('assets/logo/logo_white.png'), [
  follower1,
  follower2,
  follower3
], [
  follower1,
  follower2,
  follower3,
  follower4,
  follower5,
  follower6
], [], [], false);
User follower1 = new User('Cortes', AssetImage('assets/logo/logo_white.png'), [], [], [], [], true);
User follower2 = new User('Costura', AssetImage('assets/logo/logo_white.png'), [], [], [], [], false);
User follower3 = new User('LLenado', AssetImage('assets/logo/logo_white.png'), [], [], [], [], true);
User follower4 = new User('Encimado', AssetImage('assets/logo/logo_white.png'), [], [], [], [], true);
User follower5 = new User('Volteado', AssetImage('assets/logo/logo_white.png'), [], [], [], [], true);
User follower6 = new User('Sublimado', AssetImage('assets/logo/logo_white.png'), [], [], [], [], false);
List<Post> userPosts = [
  new Post(new AssetImage('assets/logo/logo_white.png'), user, "My first post", DateTime.now(), [follower1, follower2, follower3, follower4, follower5, follower6], [
    new Comment(follower1, "This was amazing!", DateTime.now(), false),
    new Comment(follower2, "Cool one", DateTime.now(), false),
    new Comment(follower4, "This is no good at all \nbuddy, don't post this stuff", DateTime.now(), false)
  ], false, false),
  new Post(new AssetImage('assets/logo/logo_white.png'), follower1, "This is such a great post though", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
    new Comment(follower3, "This was super cool!", DateTime.now(), false),
    new Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
    new Comment(user, "I know rite!", DateTime.now(), false),
    new Comment(follower5, "I'm batman", DateTime.now(), false)
  ], false, false),
  new Post(new AssetImage('assets/logo/logo_white.png'), follower5, "How did I even take this photo??", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
    new Comment(follower3, "This was super cool!", DateTime.now(), false),
    new Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
    new Comment(user, "I know rite!", DateTime.now(), false),
    new Comment(follower5, "I'm batman", DateTime.now(), false)
  ], false, false),
  new Post(new AssetImage('assets/logo/logo_white.png'), follower3, "Found this in my backyard. \nThought I'd post it jk lol lol lolol", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
    new Comment(follower3, "This was super cool!", DateTime.now(), false),
    new Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
    new Comment(user, "I know rite!", DateTime.now(), false),
    new Comment(follower5, "I'm batman", DateTime.now(), false)
  ], false, false),
    new Post(new AssetImage('assets/logo/logo_white.png'), follower3, "Found this in my backyard. \nThought I'd post it jk lol lol lolol", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
    new Comment(follower3, "This was super cool!", DateTime.now(), false),
    new Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
    new Comment(user, "I know rite!", DateTime.now(), false),
    new Comment(follower5, "I'm batman", DateTime.now(), false)
  ], false, false),
      new Post(new AssetImage('assets/logo/logo_white.png'), follower3, "Found this in my backyard. \nThought I'd post it jk lol lol lolol", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
    new Comment(follower3, "This was super cool!", DateTime.now(), false),
    new Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
    new Comment(user, "I know rite!", DateTime.now(), false),
    new Comment(follower5, "I'm batman", DateTime.now(), false)
  ], false, false),
      new Post(new AssetImage('assets/logo/logo_white.png'), follower3, "Found this in my backyard. \nThought I'd post it jk lol lol lolol", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
    new Comment(follower3, "This was super cool!", DateTime.now(), false),
    new Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
    new Comment(user, "I know rite!", DateTime.now(), false),
    new Comment(follower5, "I'm batman", DateTime.now(), false)
  ], false, false),
      new Post(new AssetImage('assets/logo/logo_white.png'), follower3, "Found this in my backyard. \nThought I'd post it jk lol lol lolol", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
    new Comment(follower3, "This was super cool!", DateTime.now(), false),
    new Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
    new Comment(user, "I know rite!", DateTime.now(), false),
    new Comment(follower5, "I'm batman", DateTime.now(), false)
  ], false, false),
      new Post(new AssetImage('assets/logo/logo_white.png'), follower3, "Found this in my backyard. \nThought I'd post it jk lol lol lolol", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
    new Comment(follower3, "This was super cool!", DateTime.now(), false),
    new Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
    new Comment(user, "I know rite!", DateTime.now(), false),
    new Comment(follower5, "I'm batman", DateTime.now(), false)
  ], false, false),
 
 ];

