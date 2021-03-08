import 'package:flutter/cupertino.dart';

class BackgroundProfile extends StatelessWidget {
  final Widget child;
  const BackgroundProfile({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: size.height,
        child: child
      ),
    );
  }
}