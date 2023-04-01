import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
        child: MaterialButton(
          padding: EdgeInsets.all(15),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Icon(
                Icons.person,
                color: Color(0XFF02AA8B),
                size: 40,
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Text(
                      "Diego Porta Ñaña",
                      style: TextStyle(
                          color: Color(0XFF02AA8B),
                          fontSize: 19,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text("diegoporta20@hotmail.com",
                      style: TextStyle(color: Color(0XFF02AA8B)))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
