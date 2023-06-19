import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_house/Security/Interfaces/BusinessProfile.dart';
import 'package:model_house/ServicesManagement/Screens/BusinessContent,.dart';
import '../../Security/Interfaces/Account.dart';
import '../Widgets/texts/titles.dart';

class ListBusiness extends StatefulWidget {
  List<BusinessProfile> business;
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

  Widget cardBusiness(BusinessProfile business) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 3, 5, 3),
      child: MaterialButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return BusinessContent(business);
              },
            ),
          );
        },
        textColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
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
                      color: Color.fromARGB(255, 52, 54, 52),
                      size: 40,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
