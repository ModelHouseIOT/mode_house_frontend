import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_house/Shared/Widgets/texts/titles.dart';
import '../../Shared/Widgets/texts/subtitles.dart';

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
        Titles(27, "Activities"),
        Card(
          child: MaterialButton(
            onPressed: () {},
            child: Row(children: const <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 12, 20, 12),
                child: Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                ),
              ),
              Text("Your Orders")
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
                  Icons.polyline_outlined,
                  size: 30,
                ),
              ),
              Text("Your Requests")
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
                  Icons.article_outlined,
                  size: 30,
                ),
              ),
              Text("Deals")
            ]),
          ),
        )
      ],
    );
  }
}
