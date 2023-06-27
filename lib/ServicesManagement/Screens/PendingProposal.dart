import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Security/Interfaces/UserProfile.dart';
import '../../Shared/Widgets/texts/titles.dart';
import '../Interfaces/RequestInterface.dart';

class PendingProposal extends StatefulWidget {
  List<RequestInterface>? requests;
  UserProfile? userProfile;
  PendingProposal(this.requests, this.userProfile, {Key? key})
      : super(key: key);

  @override
  _PendingProposalState createState() => _PendingProposalState();
}

class _PendingProposalState extends State<PendingProposal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Titles(28, "Pending Request"),
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
