import 'package:flutter/cupertino.dart';
import 'package:model_house/components/views/Activities.dart';
import 'package:model_house/components/views/Perfil.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(15),
      children: [Perfil(), Activities()],
    );
  }
}
