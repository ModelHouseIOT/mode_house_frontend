import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Shared/Views/Adicional.dart';
import '../../Shared/Views/Activities.dart';
import '../../Shared/Views/Perfil.dart';

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
      children: [
        Perfil(),
        Activities(),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
          child: Adicional(),
        ),
        MaterialButton(
          height: 45,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: const Color(0XFF02AA8B),
          onPressed: () {},
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
            child: Row(children: const <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
                child: Icon(
                  Icons.logout_outlined,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              Text(
                "Log Out",
                style: TextStyle(color: Colors.white, fontSize: 17),
              )
            ]),
          ),
        ),
      ],
    );
  }
}
