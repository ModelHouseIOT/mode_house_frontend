import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_house/Security/Interfaces/UserProfile.dart';
import 'package:model_house/Shared/Widgets/buttons/ActiveButton.dart';
import 'package:model_house/Shared/Widgets/texts/subtitles.dart';

import '../Widgets/texts/titles.dart';

class ProfileUser extends StatefulWidget {
  UserProfile user;
  ProfileUser(this.user, {Key? key}) : super(key: key);

  @override
  _ProfileUserState createState() => _ProfileUserState();
}

class _ProfileUserState extends State<ProfileUser> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
                    Subtitles(widget.user.firstName),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                      child: Text("Client and Business"),
                    ),
                    ActiveButton(8, "Edit Profile", () {}, 15)
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
                          Text(widget.user.firstName)
                        ],
                      ),
                      Row(
                        children: [
                          Titles(13, "Last Name: "),
                          Text(widget.user.lastName)
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
                          Text(widget.user.gender)
                        ],
                      ),
                      Row(
                        children: [
                          Titles(13, "Phone Number: "),
                          Text(widget.user.phoneNumber)
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
                          Titles(13, "Registration Date "),
                          Text(widget.user.registrationDate)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                      child: Row(
                        children: [Titles(13, "Address: "), Text("Av. ...")],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
