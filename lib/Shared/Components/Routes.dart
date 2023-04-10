import 'package:flutter/cupertino.dart';

import '../../ServicesManagement/Screens/Favorites.dart';
import '../../ServicesManagement/Screens/Home.dart';
import '../../ServicesManagement/Screens/Notification.dart';
import '../../ServicesManagement/Screens/Menu.dart';

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
      Favorites(),
      Notifications(),
      Menu(),
    ];
    return myList[widget.index];
  }
}
