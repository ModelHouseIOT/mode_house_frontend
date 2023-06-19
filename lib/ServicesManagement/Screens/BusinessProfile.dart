import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_house/Security/Interfaces/UserProfile.dart';
import 'package:model_house/Security/Services/User_Profile.dart';

import '../../Security/Interfaces/Account.dart';
import '../../Shared/Widgets/buttons/ActiveButton.dart';
import '../../Shared/Widgets/texts/subtitles.dart';
import '../../Shared/Widgets/texts/titles.dart';

class BusinessProfile extends StatefulWidget {
  Account account;
  BusinessProfile(this.account, {Key? key}) : super(key: key);

  @override
  _BusinessProfileState createState() => _BusinessProfileState();
}

class _BusinessProfileState extends State<BusinessProfile> {
  HttpUserProfile? httpUserProfile;
  UserProfile? userProfile;

  void initState() {
    httpUserProfile = HttpUserProfile();
    getUserProfile();
    super.initState();
  }

  Future getUserProfile() async {
    userProfile = await httpUserProfile?.getUserProfileById(widget.account.id);
    setState(() {
      userProfile = userProfile;
    });
  }

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
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 30, 40, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 45,
                      backgroundImage: NetworkImage(
                          "https://i.pinimg.com/550x/9e/f8/b3/9ef8b3ef5693f6282d9b11d998e04059.jpg"),
                    ),
                    Column(
                      children: [
                        Subtitles(userProfile?.firstName),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                          child: Text("Client and Business"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Titles(23, "Personal Information"),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: [
                              Titles(13, "First Name: "),
                              Text(userProfile!.firstName)
                            ],
                          ),
                          Row(
                            children: [
                              Titles(13, "Last Name: "),
                              Text(userProfile!.lastName)
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: [
                              Titles(13, "Gender: "),
                              Text(userProfile!.gender)
                            ],
                          ),
                          Row(
                            children: [
                              Titles(13, "Phone Number: "),
                              Text(userProfile!.phoneNumber)
                            ],
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                          child: Row(
                            children: [
                              Titles(13, "Address: "),
                              Text("Av. ...")
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Titles(33, "Projects"),
                ],
              ),
              Card(
                child: Container(
                  height: 250,
                  width: 300,
                  padding: EdgeInsets.all(30),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Titles(20, "you do not have projects"),
                        Icon(
                          Icons.sentiment_dissatisfied_outlined,
                          size: 80,
                          color: Color(0XFF02AA8B),
                        )
                      ]),
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
