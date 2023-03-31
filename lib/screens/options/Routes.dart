import 'package:flutter/cupertino.dart';
import 'package:model_house/screens/body/Home.dart';
import 'package:model_house/screens/body/Menu.dart';
import 'package:model_house/screens/body/Message.dart';

import '../body/Notification.dart';

class Routes extends StatefulWidget {
  final int index;
  Routes(this.index, {Key? key}) : super(key: key);

  @override
  _RoutesState createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      Home(),
      Message(),
      Notifications(),
      Menu(),
    ];
    return myList[widget.index];
  }
}
