import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Security/Interfaces/Account.dart';
import '../../Security/Services/Account_Service.dart';
import '../../Shared/Views/ListBusiness.dart';
import '../../Shared/Widgets/texts/titles.dart';

class Notifications extends StatefulWidget {
  Account account;
  Notifications(this.account, {Key? key}) : super(key: key);

  @override
  _NotificationState createState() => _NotificationState();
}

class _NotificationState extends State<Notifications> {
  HttpAccount? httpAccount;
  List<Account>? businesses;
  void initState() {
    httpAccount = HttpAccount();
    getBusiness();
    super.initState();
  }

  Future getBusiness() async {
    //businesses = await httpAccount?.getAllBusiness();
    setState(() {
      businesses = businesses;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 15),
            child: Titles(28, "Notification"),
          ),
          ListBusiness(businesses!)
        ],
      ),
    );
  }
}
