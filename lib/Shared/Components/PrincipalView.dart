import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_house/Security/Interfaces/Account.dart';
import 'package:model_house/Security/Interfaces/User.dart';

import '../../Security/Services/Account_Service.dart';
import 'Navigation.dart';
import 'Routes.dart';

class PrincipalView extends StatefulWidget {
  User user;
  PrincipalView(this.user, {Key? key}) : super(key: key);

  @override
  _PrincipalVireState createState() => _PrincipalVireState();
}

class _PrincipalVireState extends State<PrincipalView> {
  int index = 0;
  Navigation? myNavigation;
  Account? cuenta;

  HttpAccount? httpAccount;

  Future signIn() async {
    //cuenta = await httpAccount?.getEmail(widget.account.id.toString());
    setState(() {
      cuenta = cuenta;
    });
  }

  void initState() {
    httpAccount = HttpAccount();
    myNavigation = Navigation(currentIndex: (i) {
      setState(() {
        index = i;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: myNavigation,
      body: Routes(index, widget.user),
    );
  }
}
