import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_house/components/views/Activities.dart';
import 'package:model_house/components/views/Adicional.dart';
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
      children: [
        Perfil(),
        Activities(),
        Adicional(),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
          child: MaterialButton(
            height: 45,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: const Color(0XFF02AA8B),
            onPressed: () {},
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
        )
      ],
    );
  }
}
