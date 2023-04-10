import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_house/Shared/Views/ProfileBusiness.dart';
import 'package:model_house/Shared/Views/ProfileUser.dart';
import 'package:model_house/Shared/Widgets/texts/titles.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Titles(33, "Profile"),
        backgroundColor: const Color(0xffffffff),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0XFF02AA8B),
          ),
          onPressed: () => {Navigator.of(context).pop()},
        ),
      ),
      body: ListView(
        children: [ProfileUser(), ProfileBusiness()],
      ),
    );
  }
}