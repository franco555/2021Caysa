import 'package:caysa2021/components/buttoms/btnForm.dart';
import 'package:caysa2021/components/cards/card_Person.dart';
import 'package:caysa2021/components/cards/card_productosOfProceso.dart';
import 'package:caysa2021/components/inputs/searchAnimated.dart';
import 'package:caysa2021/components/inputs/textFormFieldWithIcon.dart';
import 'package:caysa2021/components/labels/labelDisable.dart';
import 'package:caysa2021/components/other/separadorHorizontal.dart';
import 'package:caysa2021/components/other/tituloFormularioWithImagen.dart';
import 'package:caysa2021/components/other/validation.dart';
import 'package:caysa2021/components/styles/inputDecoration.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';

class ModalFormSend extends StatefulWidget {

  final Function fn;
  final String titulo;
  final String subTitulo;
  const ModalFormSend({
    Key key,
    this.titulo,
    this.subTitulo,
    this.fn,
  }) : super(key: key);

  @override
  _ModalFormSendState createState() => _ModalFormSendState();
}

class _ModalFormSendState extends State<ModalFormSend> {

  String name,email,phone;
  int tabNav=1;

  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  TextEditingController _cantidad = TextEditingController();
  TextEditingController _precio = TextEditingController();
  TextEditingController _precioTotal = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print("sise ${size.height}");
    return Container(
          height: size.height-100,
          decoration: BoxDecoration(color: Colors.white,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  tabAppBar([Text("Persona")],1),
                  tabAppBar([Text("Producto y"),Text("Proceso")],2),
                  tabAppBar([Text("Cantidad")],3),
                ],
              ),
              tabNav == 1? _sectionPersona(size.height-100) : (tabNav == 2 ?_sectionProductoProceso(size.height-100) : _sectioncantidad()),
            ],
          ),
    );
  }

  Widget tabAppBar(List<Widget> texto, int item){
    return Expanded(
      child: InkWell(
        child: Column(
          children: [
            Container(
              height: 60,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: texto,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
              height: 3,
              color: tabNav==item ? CFr().getColorAzul400() : CFr().getColorSecondary(),
            )
          ],
        ),
        onTap: (){
          setState(() {
            tabNav=item;
          });
        },
      ),
    );
  }

  Widget _sectionPersona(double h){
    return Column(
      children: [
        SizedBox(height: 15,),
        SearchAnimated(colorLinea: CFr().getColorAzul600(),colorIcono: CFr().getColorBlancoTenue(),),        
        SizedBox(height: 20,),
        Container(
          height: h-170,
            child: SingleChildScrollView(
            child: Column(
              children: [
                CarPerson(
                    imagen: "assets/logo/logo_white.png",
                    nombre: "Franco",
                    apellido: "Caysahuana",
                    colorFondo:Colors.transparent ,
                    colorText: CFr().getColorAzul600(),
                    colorLinea: CFr().getColorSecondary(),
                ),
                CarPerson(
                    imagen: "assets/logo/logo_white.png",
                    nombre: "Franco",
                    apellido: "Caysahuana",
                    colorFondo:Colors.transparent ,
                    colorText: CFr().getColorAzul600(),
                    colorLinea: CFr().getColorSecondary(),
                ),
                CarPerson(
                    imagen: "assets/logo/logo_white.png",
                    nombre: "Franco",
                    apellido: "Caysahuana",
                    colorFondo:Colors.transparent ,
                    colorText: CFr().getColorAzul600(),
                    colorLinea: CFr().getColorSecondary(),
                ),
                CarPerson(
                    imagen: "assets/logo/logo_white.png",
                    nombre: "Franco",
                    apellido: "Caysahuana",
                    colorFondo:Colors.transparent ,
                    colorText: CFr().getColorAzul600(),
                    colorLinea: CFr().getColorSecondary(),
                ),
                CarPerson(
                    imagen: "assets/logo/logo_white.png",
                    nombre: "Franco",
                    apellido: "Caysahuana",
                    colorFondo:Colors.transparent ,
                    colorText: CFr().getColorAzul600(),
                    colorLinea: CFr().getColorSecondary(),
                ),
                CarPerson(
                    imagen: "assets/logo/logo_white.png",
                    nombre: "Franco",
                    apellido: "Caysahuana",
                    colorFondo:Colors.transparent ,
                    colorText: CFr().getColorAzul600(),
                    colorLinea: CFr().getColorSecondary(),
                ),
                CarPerson(
                    imagen: "assets/logo/logo_white.png",
                    nombre: "Franco",
                    apellido: "Caysahuana",
                    colorFondo:Colors.transparent ,
                    colorText: CFr().getColorAzul600(),
                    colorLinea: CFr().getColorSecondary(),
                ),
                CarPerson(
                    imagen: "assets/logo/logo_white.png",
                    nombre: "Franco",
                    apellido: "Caysahuana",
                    colorFondo:Colors.transparent ,
                    colorText: CFr().getColorAzul600(),
                    colorLinea: CFr().getColorSecondary(),
                ),
                CarPerson(
                    imagen: "assets/logo/logo_white.png",
                    nombre: "Franco",
                    apellido: "Caysahuana",
                    colorFondo:Colors.transparent ,
                    colorText: CFr().getColorAzul600(),
                    colorLinea: CFr().getColorSecondary(),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _sectionProductoProceso( double h){
    return Column(
      children: [
        SizedBox(height: 5,),
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
          Container(
            height: h-260,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CardProductosOfProceso(
                      imagen:"assets/logo/logo_white.png",
                      titulo:"goku",
                      estado:"Pendiente",
                      precioUnitario:12,
                      stock:41,
                      fn: null,
                    ),
                    CardProductosOfProceso(
                      imagen:"assets/logo/logo_white.png",
                      titulo:"goku",
                      estado:"Pendiente",
                      precioUnitario:12,
                      stock:41,
                      fn:null ,
                    ),
                    CardProductosOfProceso(
                      imagen:"assets/logo/logo_white.png",
                      titulo:"goku",
                      estado:"Pendiente",
                      precioUnitario:12,
                      stock:41,
                      fn:null ,
                    ),
                    CardProductosOfProceso(
                      imagen:"assets/logo/logo_white.png",
                      titulo:"goku",
                      estado:"Pendiente",
                      precioUnitario:12,
                      stock:41,
                      fn:null ,
                    ),
                    CardProductosOfProceso(
                      imagen:"assets/logo/logo_white.png",
                      titulo:"goku",
                      estado:"Pendiente",
                      precioUnitario:12,
                      stock:41,
                      fn:null ,
                    ),
                    CardProductosOfProceso(
                      imagen:"assets/logo/logo_white.png",
                      titulo:"goku",
                      estado:"Pendiente",
                      precioUnitario:12,
                      stock:41,
                      fn:null ,
                    ),
                    CardProductosOfProceso(
                      imagen:"assets/logo/logo_white.png",
                      titulo:"goku",
                      estado:"Pendiente",
                      precioUnitario:12,
                      stock:41,
                      fn:null ,
                    ),
                    CardProductosOfProceso(
                      imagen:"assets/logo/logo_white.png",
                      titulo:"goku",
                      estado:"Pendiente",
                      precioUnitario:12,
                      stock:41,
                      fn:null ,
                    ),
                    CardProductosOfProceso(
                      imagen:"assets/logo/logo_white.png",
                      titulo:"goku",
                      estado:"Pendiente",
                      precioUnitario:12,
                      stock:41,
                      fn:null ,
                    ),
                  ],
                ),
              ),
          ),
      ],
    );
  }

  Widget _sectioncantidad(){
    return Column(
      children: [
        SizedBox(height: 15,),
        TituloFormularioWhithImagen(
          imagen: "assets/logo/altopro.png",
          titulo: "Fernando Calderon ${_precio.text}",
          subTitulo: "Agregando nuevo envío ${_cantidad.text}",
        ),
        Form(
          key: _formkey,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
              texto:"Guardar" ,
              color: CFr().getColorAzul600(),
              icono: Icons.save,
              fn: (){ save();},
            ),
            BtnForm(
              texto:"Cancelar" ,
              color: CFr().getColorTextBtnSalir(),
              icono: Icons.close,
              fn: () => Navigator.of(context).pop(),
            ),
          ],
        )
      ],
    );
  }

  save() {
    if (_formkey.currentState.validate()) {
      print("Cantidad $_cantidad");
      //_formkey.currentState.reset();
    }
  }

  

  format(double numero){
    final oCcy = new NumberFormat("#,##0.00", "en_US");
    final result=oCcy.format(numero);
    print(result);
    return result;
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

