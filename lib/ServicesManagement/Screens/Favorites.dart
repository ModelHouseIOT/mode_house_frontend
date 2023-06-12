import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_house/Security/Interfaces/User.dart';

import '../../Security/Interfaces/Account.dart';
import '../../Security/Interfaces/BusinessProfile.dart';
import '../../Security/Services/Account_Service.dart';
import '../../Security/Services/Business_Profile.dart';
import '../../Shared/Views/ListBusiness.dart';
import '../../Shared/Widgets/texts/titles.dart';

class Favorites extends StatefulWidget {
  User user;
  Favorites(this.user, {Key? key}) : super(key: key);

  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  HttpBusinessProfile? httpBusinessProfile;
  List<BusinessProfile>? businesses;
  void initState() {
    httpBusinessProfile = HttpBusinessProfile();
    getBusiness();
    super.initState();
  }

  Future getBusiness() async {
    //businesses = await httpAccount?.getAllBusiness();
    businesses = await httpBusinessProfile?.getAllBusinessProfile();
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
            child: Titles(28, "Favorites"),
          ),
          businesses != null ? ListBusiness(businesses!) : Container()
        ],
      ),
    );
  }
}
