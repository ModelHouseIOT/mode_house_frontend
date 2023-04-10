import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Shared/Views/ListBusiness.dart';
import '../../Shared/Widgets/texts/titles.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 15),
            child: Titles(28, "Favorites"),
          ),
          ListBusiness(3)
        ],
      ),
    );
  }
}
