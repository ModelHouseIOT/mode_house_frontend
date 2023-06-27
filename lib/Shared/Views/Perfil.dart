import 'package:flutter/material.dart';
import 'package:model_house/Security/Interfaces/User.dart';
import 'package:model_house/Security/Interfaces/UserProfile.dart';
import 'package:model_house/ServicesManagement/Screens/Profile.dart';
import 'package:model_house/Shared/Views/FormProfileUser.dart';

// ignore: must_be_immutable
class Perfil extends StatefulWidget {
  User user;
  UserProfile userProfile;
  Perfil(this.user, this.userProfile, {Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: const EdgeInsets.fromLTRB(0, 30, 0, 30),
        child: MaterialButton(
          padding: const EdgeInsets.all(15),
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
                      "${widget.userProfile.firstName} ${widget.userProfile.lastName}",
                      style: const TextStyle(
                          color: Color(0XFF02AA8B),
                          fontSize: 19,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text(widget.userProfile.phoneNumber,
                      style: const TextStyle(color: Color(0XFF02AA8B)))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void redirectPerfil() {
    // ignore: unnecessary_null_comparison
    widget.user != null
        ? Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return Profile(widget.user, widget.userProfile);
              },
            ),
          )
        : Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return FormProfileUser(widget.user);
              },
            ),
          );
  }
}
