import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_house/Security/Interfaces/BusinessProfile.dart';

import '../../Security/Interfaces/Account.dart';
import '../../ServicesManagement/Screens/BusinessProfile.dart';
import '../Widgets/texts/titles.dart';

class ListBusiness extends StatefulWidget {
  List<BusinessProfileInterface> business;
  ListBusiness(this.business, {Key? key}) : super(key: key);

  @override
  _ListBusinessState createState() => _ListBusinessState();
}

class _ListBusinessState extends State<ListBusiness> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: widget.business.length,
        itemBuilder: (context, index) {
          return cardBusiness(widget.business[index]);
        },
      ),
    );
  }

  Widget cardBusiness(BusinessProfileInterface business) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 3, 20, 3),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    "https://t1.uc.ltmcdn.com/es/posts/4/7/2/como_planear_una_remodelacion_en_casa_19274_orig.jpg"),
              ),
              Column(
                children: [
                  Titles(18, business.name),
                  Text("Client and Business")
                ],
              ),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return Container();
                        },
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.navigate_next_outlined,
                    color: Color(0XFF02AA8B),
                    size: 40,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
