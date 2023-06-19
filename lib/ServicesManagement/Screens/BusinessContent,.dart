import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_house/Security/Interfaces/BusinessProfile.dart';
import 'package:model_house/Shared/Widgets/buttons/ActiveButton.dart';

import '../../Shared/Widgets/texts/titles.dart';

class BusinessContent extends StatefulWidget {
  BusinessProfile businessProfile;
  BusinessContent(this.businessProfile, {Key? key}) : super(key: key);
  @override
  _BusinessContentState createState() => _BusinessContentState();
}

class _BusinessContentState extends State<BusinessContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Titles(28, "Business Profile"),
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
      body: Container(
        padding: EdgeInsets.all(0),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              height: 200,
              child: Image.network(
                'https://medac.es/sites/default/files/styles/img_blog_big/public/blog/destacadas/tipos%20de%20empresa.jpg?itok=iSDGRayH',
                fit: BoxFit.cover,
              ),
            ),
            Transform.translate(
              offset: Offset(0.0, -60),
              child: Column(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                          radius: 60.0,
                          backgroundImage: NetworkImage(
                            'https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg',
                          )),
                      Text("Diego Alexander Porta Ñaña")
                    ],
                  ),
                  Row(
                    children: [Text("Hola"), Text("Hola")],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 45,
                    margin: EdgeInsets.all(15),
                    child: ActiveButton(10, "Request", () {
                      print("Request enviado");
                    }, 18),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
