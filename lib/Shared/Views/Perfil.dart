import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_house/Security/Interfaces/Account.dart';
import 'package:model_house/Security/Interfaces/UserProfile.dart';
import 'package:model_house/ServicesManagement/Screens/Profile.dart';
import 'package:model_house/Shared/Views/FormProfileUser.dart';

class Perfil extends StatefulWidget {
  Account account;
  UserProfile user;
  Perfil(this.account, this.user, {Key? key}) : super(key: key);

  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
        child: MaterialButton(
          padding: EdgeInsets.all(15),
          onPressed: redirectPerfil,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Icon(
                Icons.person,
                color: Color(0XFF02AA8B),
                size: 40,
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Text(
                      widget.user.firstName + " " + widget.user.lastName,
                      style: TextStyle(
                          color: Color(0XFF02AA8B),
                          fontSize: 19,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text("hooal", style: TextStyle(color: Color(0XFF02AA8B)))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void redirectPerfil() {
    widget.account.userId != 0
        ? Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return Profile(widget.account, widget.user);
              },
            ),
          )
        : Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return FormProfileUser(widget.account);
              },
            ),
          );
  }
}
