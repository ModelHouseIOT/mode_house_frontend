import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_house/Security/Interfaces/Account.dart';
import 'package:model_house/Security/Services/Account_Service.dart';
import 'package:model_house/Shared/Views/ListBusiness.dart';
import 'package:model_house/Shared/Widgets/buttons/Input.dart';
import 'package:model_house/Shared/Widgets/texts/subtitles.dart';
import 'package:model_house/Shared/Widgets/texts/titles.dart';

class Home extends StatefulWidget {
  Account account;
  Home(this.account, {Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final algo = TextEditingController();
  HttpAccount? httpAccount;
  List<Account>? businesses;
  void initState() {
    httpAccount = HttpAccount();
    getBusiness();
    super.initState();
  }
  Future getBusiness() async {
    businesses = await httpAccount?.getAllBusiness();
    setState(() {
      businesses = businesses;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 15),
            child: Titles(28, "Home"),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
            child: Input(Icons.search, "Search on Model House", true, algo),
          ),
          ListBusiness(businesses!)
        ],
      ),
    );
  }
}
