import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_house/Security/Interfaces/UserProfile.dart';
import 'package:model_house/Security/Services/User_Profile.dart';
import 'package:model_house/ServicesManagement/Screens/Profile.dart';
import 'package:model_house/Shared/Views/FormProfileUser.dart';
import 'package:model_house/Shared/Views/ProfileUser.dart';
import 'package:model_house/Shared/Widgets/buttons/ActiveButton.dart';

import '../../Security/Interfaces/Account.dart';
import '../../Shared/Views/Adicional.dart';
import '../../Shared/Views/Activities.dart';
import '../../Shared/Views/Perfil.dart';

class Menu extends StatefulWidget {
  Account account;
  Menu(this.account, {Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  HttpUserProfile? httpUserProfile;
  UserProfile? profile;

  Future initialize() async {
    profile =
        await httpUserProfile?.getUserProfileById(widget.account.id.toString());
    setState(() {
      profile = profile;
      print(widget.account.id);
      print(profile);
    });
  }

  void initState() {
    httpUserProfile = HttpUserProfile();
    initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(15),
      children: [
        profile != null
            ? Perfil(widget.account, profile!)
            : Container(
                margin: EdgeInsets.fromLTRB(10, 20, 20, 10),
                width: MediaQuery.of(context).size.width,
                height: 45,
                child: ActiveButton(12, "Edit Profile", () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return FormProfileUser(widget.account);
                      },
                    ),
                  );
                }, 18),
              ),
        Activities(),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
          child: Adicional(),
        ),
        MaterialButton(
          height: 45,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: const Color(0XFF02AA8B),
          onPressed: () {},
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
            child: Row(children: const <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
                child: Icon(
                  Icons.logout_outlined,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              Text(
                "Log Out",
                style: TextStyle(color: Colors.white, fontSize: 17),
              )
            ]),
          ),
        ),
      ],
    );
  }
}
