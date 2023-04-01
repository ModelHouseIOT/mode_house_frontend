import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_house/components/texts/subtitles.dart';

class Activities extends StatefulWidget {
  const Activities({Key? key}) : super(key: key);

  @override
  _ActivitiesState createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Subtitles("Activities"),
        Card(
          child: MaterialButton(
            onPressed: () {},
            child: Row(children: const <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 12, 20, 12),
                child: Icon(
                  Icons.add_circle_outline,
                  size: 30,
                ),
              ),
              Text("Create Post")
            ]),
          ),
        ),
        Card(
          child: MaterialButton(
            onPressed: () {},
            child: Row(children: const <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 12, 20, 12),
                child: Icon(
                  Icons.post_add_outlined,
                  size: 30,
                ),
              ),
              Text("Create Post")
            ]),
          ),
        ),
        Card(
          child: MaterialButton(
            onPressed: () {},
            child: Row(children: const <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 12, 20, 12),
                child: Icon(
                  Icons.shopping_cart,
                  size: 30,
                ),
              ),
              Text("Your Post")
            ]),
          ),
        ),
        Card(
          child: MaterialButton(
            onPressed: () {},
            child: Row(children: const <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 12, 20, 12),
                child: Icon(
                  Icons.rebase_edit,
                  size: 30,
                ),
              ),
              Text("Your Request")
            ]),
          ),
        ),
        Card(
            child: MaterialButton(
          onPressed: () {},
          child: Row(children: const <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 12, 20, 12),
              child: Icon(
                Icons.description,
                size: 30,
              ),
            ),
            Text("Deals")
          ]),
        ))
      ],
    );
  }
}
