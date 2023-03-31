import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/buttons/Navigation.dart';
import 'Routes.dart';

class PrincipalView extends StatefulWidget {
  const PrincipalView({Key? key}) : super(key: key);

  @override
  _PrincipalVireState createState() => _PrincipalVireState();
}

class _PrincipalVireState extends State<PrincipalView> {
  int index = 0;
  Navigation? myNavigation;

  @override
  void initState() {
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
      body: Routes(index),
    );
  }
}
