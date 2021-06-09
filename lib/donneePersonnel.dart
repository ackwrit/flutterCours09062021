import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:premiere_app/MyDrawer.dart';
import 'package:premiere_app/exports.dart';
import 'package:premiere_app/main.dart';
import 'package:premiere_app/myContact.dart';

class donneePersonnel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return donneePersonnelState();
  }
}

class donneePersonnelState extends State<donneePersonnel> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        padding: EdgeInsets.only(top: 60, right: 20, left: 20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          children: [
            premiereLigne(),
            SizedBox(
              height: 10,
            ),
            secondeLigne(),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                print("j'ai cliqué une fois");
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return MyDrawer();
                }));
              },
              onDoubleTap: () {
                print("j'ai cliqué deux fois");
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return myContact();
                }));
              },
              child: Container(
                height: 20,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Center(
                  child: Text('Contact'),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 20,
              width: 150,
              color: Colors.blue,
              child: Text('Menu juridique'),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 20,
              width: 150,
              color: Colors.blue,
              child: Text('Licence'),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 20,
              width: 150,
              color: Colors.blue,
              child: Text('Retelécharger'),
            ),
          ],
        ));
  }

  Widget premiereLigne() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            shape: BoxShape.rectangle,
            image: DecorationImage(
                image: AssetImage("assets/yugiohneuron.png"),
                fit: BoxFit.fill)),
      ),
      Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/yugiohneuron.png"),
                fit: BoxFit.fill)),
      ),
      Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/yugiohneuron.png"),
                fit: BoxFit.fill)),
      ),
    ]);
  }

  Widget secondeLigne() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/yugiohneuron.png"),
                fit: BoxFit.fill)),
      ),
      Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/yugiohneuron.png"),
                fit: BoxFit.fill)),
      ),
      Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/yugiohneuron.png"),
                fit: BoxFit.fill)),
      ),
    ]);
  }
}
