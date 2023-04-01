import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../texts/subtitles.dart';

class Adicional extends StatefulWidget {
  const Adicional({Key? key}) : super(key: key);

  @override
  _AdicionalState createState() => _AdicionalState();
}

class _AdicionalState extends State<Adicional> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Subtitles("Adicional"),
        Card(
          child: MaterialButton(
            onPressed: () {},
            child: Row(children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 12, 20, 12),
                child: Icon(
                  Icons.favorite,
                  size: 30,
                ),
              ),
              Text("Favoritos")
            ]),
          ),
        ),
        Card(
          child: MaterialButton(
            onPressed: () {},
            child: Row(children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 12, 20, 12),
                child: Icon(
                  Icons.notifications,
                  size: 30,
                ),
              ),
              Text("Nofication")
            ]),
          ),
        ),
        Card(
          child: MaterialButton(
            onPressed: () {},
            child: Row(children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 12, 20, 12),
                child: Icon(
                  Icons.settings,
                  size: 30,
                ),
              ),
              Text("Favoritos")
            ]),
          ),
        )
      ],
    );
  }
}
