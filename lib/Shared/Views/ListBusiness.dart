import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/texts/titles.dart';

class ListBusiness extends StatefulWidget {
  int size;
  ListBusiness(this.size, {Key? key}) : super(key: key);

  @override
  _ListBusinessState createState() => _ListBusinessState();
}

class _ListBusinessState extends State<ListBusiness> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: widget.size,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(20, 3, 20, 3),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          "https://t1.uc.ltmcdn.com/es/posts/4/7/2/como_planear_una_remodelacion_en_casa_19274_orig.jpg"),
                    ),
                    Column(
                      children: [
                        Titles(18, "Luis Li Tang"),
                        Text("Client and Business")
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.navigate_next_outlined,
                          color: Color(0XFF02AA8B),
                          size: 40,
                        ))
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
