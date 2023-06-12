import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_house/Security/Interfaces/Account.dart';
import 'package:model_house/Security/Interfaces/BusinessProfile.dart';
import 'package:model_house/Security/Interfaces/User.dart';
import 'package:model_house/Security/Interfaces/UserProfile.dart';
import 'package:model_house/Security/Services/Business_Profile.dart';
import 'package:model_house/Shared/Widgets/buttons/ActiveButton.dart';
import 'package:model_house/Shared/Widgets/buttons/Input.dart';

import '../../Security/Services/User_Profile.dart';
import '../Widgets/texts/titles.dart';

class FormProfileUser extends StatefulWidget {
  User user;
  FormProfileUser(this.user, {Key? key}) : super(key: key);

  @override
  _FormProfileUserState createState() => _FormProfileUserState();
}

class _FormProfileUserState extends State<FormProfileUser> {
  final firstname = TextEditingController();
  final lastname = TextEditingController();
  final gender = TextEditingController();
  final phonenumber = TextEditingController();
  HttpUserProfile? httpUserProfile;
  UserProfile? profile;

  void initState() {
    httpUserProfile = HttpUserProfile();
    super.initState();
  }

  Future initialize() async {
    profile = await httpUserProfile?.createProfile(firstname.text,
        lastname.text, gender.text, phonenumber.text, widget.user.id);
    print("SFSA");
    setState(() {
      profile = profile;
      print(profile);
      print(widget.user.id);
      if (profile != null) {
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("The post was created successfully"),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text("Ok"))
                ],
              );
            });
      } else {
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("Something went wrong"),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        firstname.text = "";
                        lastname.text = "";
                        gender.text = "";
                        phonenumber.text = "";
                      },
                      child: const Text("Ok"))
                ],
              );
            });
      }
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
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Input(Icons.abc, "Insert First Name", false, firstname),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Input(Icons.abc, "Insert Lasta Name", false, lastname),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Input(Icons.abc, "Insert Gender", false, gender),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child:
                    Input(Icons.abc, "Insert Phone Number", false, phonenumber),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  child: ActiveButton(12, "Update Profile", initialize, 18))
            ],
          ),
        ),
      ),
    );
  }
}
