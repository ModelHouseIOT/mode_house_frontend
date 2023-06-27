import 'package:flutter/material.dart';
import 'package:model_house/Security/Interfaces/User.dart';
import 'package:model_house/Security/Interfaces/UserProfile.dart';

import '../../Security/Interfaces/BusinessProfile.dart';
import '../../Security/Services/Business_Profile.dart';
import '../../Shared/Views/ListBusiness.dart';
import '../../Shared/Widgets/texts/titles.dart';
import '../Interfaces/RequestInterface.dart';

// ignore: must_be_immutable
class RequestFinished extends StatefulWidget {
  List<RequestInterface>? requests;
  UserProfile? userProfile;
  RequestFinished(this.requests, this.userProfile, {Key? key})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RequestFinishedState createState() => _RequestFinishedState();
}

class _RequestFinishedState extends State<RequestFinished> {
  HttpBusinessProfile? httpBusinessProfile;
  List<BusinessProfile>? businesses;
  @override
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
      appBar: AppBar(
        title: Titles(28, "Pending Finished"),
        backgroundColor: const Color(0xffffffff),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0XFF02AA8B),
          ),
          onPressed: () => {Navigator.of(context).pop()},
        ),
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}
