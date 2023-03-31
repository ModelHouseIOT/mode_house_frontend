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
          child: Column(children: [
            MaterialButton(
              onPressed: () {},
              child: Row(children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 12, 20, 12),
                  child: Icon(
                    Icons.add_circle_outline,
                    size: 30,
                  ),
                ),
                Text("Create Post")
              ]),
            ),
            MaterialButton(
              onPressed: () {},
              child: Row(children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 12, 20, 12),
                  child: Icon(
                    Icons.post_add_outlined,
                    size: 30,
                  ),
                ),
                Text("Create Post")
              ]),
            ),
            MaterialButton(
              onPressed: () {},
              child: Row(children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 12, 20, 12),
                  child: Icon(
                    Icons.shopping_cart,
                    size: 30,
                  ),
                ),
                Text("Create Post")
              ]),
            ),
            MaterialButton(
              onPressed: () {},
              child: Row(children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 12, 20, 12),
                  child: Icon(
                    Icons.rebase_edit,
                    size: 30,
                  ),
                ),
                Text("Create Post")
              ]),
            ),
            MaterialButton(
              onPressed: () {},
              child: Row(children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 12, 20, 12),
                  child: Icon(
                    Icons.description,
                    size: 30,
                  ),
                ),
                Text("Create Post")
              ]),
            )
          ]),
        )
      ],
    );
  }
}
