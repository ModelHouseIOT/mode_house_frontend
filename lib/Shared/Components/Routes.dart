import 'package:flutter/cupertino.dart';
import 'package:model_house/Security/Interfaces/Account.dart';
import 'package:model_house/Security/Interfaces/User.dart';

import '../../ServicesManagement/Screens/Favorites.dart';
import '../../ServicesManagement/Screens/Home.dart';
import '../../ServicesManagement/Screens/Notification.dart';
import '../../ServicesManagement/Screens/Menu.dart';

class Routes extends StatefulWidget {
  final int index;
  User user;
  Routes(this.index, this.user, {Key? key}) : super(key: key);

  @override
  _RoutesState createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      Home(widget.user),
      Favorites(widget.user),
      Notifications(widget.user),
      Menu(widget.user),
    ];
    return myList[widget.index];
  }
}
