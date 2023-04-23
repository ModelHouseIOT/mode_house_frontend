import 'package:flutter/cupertino.dart';
import 'package:model_house/Security/Interfaces/Account.dart';

import '../../ServicesManagement/Screens/Favorites.dart';
import '../../ServicesManagement/Screens/Home.dart';
import '../../ServicesManagement/Screens/Notification.dart';
import '../../ServicesManagement/Screens/Menu.dart';

class Routes extends StatefulWidget {
  final int index;
  Account account;
  Routes(this.index, this.account, {Key? key}) : super(key: key);

  @override
  _RoutesState createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      Home(widget.account),
      Favorites(widget.account),
      Notifications(widget.account),
      Menu(widget.account),
    ];
    return myList[widget.index];
  }
}
