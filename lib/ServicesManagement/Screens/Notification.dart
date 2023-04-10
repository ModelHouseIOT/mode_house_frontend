import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Shared/Views/ListBusiness.dart';
import '../../Shared/Widgets/texts/titles.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationState createState() => _NotificationState();
}

class _NotificationState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 15),
            child: Titles(28, "Notification"),
          ),
          ListBusiness(3)
        ],
      ),
    );
  }
}
