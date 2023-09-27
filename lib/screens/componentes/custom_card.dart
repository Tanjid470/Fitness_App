import 'package:fitness/constants/app_textStyle.dart';
import 'package:fitness/screens/firebase/data/dataserver.dart';
import 'package:fitness/screens/singleScreens/name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Container cardCurstom(
    BuildContext context, String title, String url, Color color, pageRoute) {
  return Container(
    height: 120,
    width: MediaQuery.of(context).size.width,
    child: GestureDetector(
      onTap: () {
        color = Colors.blue;
        DataServer datacollect=Get.put(DataServer());
        datacollect.gender=title;
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  pageRoute),

        );
      },
      child: Card(
        shadowColor: Colors.red,
        color: color,
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: MediaQuery.of(context).size.width / 2,
                child: Text(
                  "\t\t\t\t\t$title",
                  style: cardText(),
                )),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  //color: Colors.red,
                  image: DecorationImage(
                      image: NetworkImage(url), fit: BoxFit.fitHeight)),
            ))
            // Image.network(url),
          ],
        ),
      ),
    ),
  );
}

Container cardCurstomlittle(BuildContext context, String title, String url) {
  return Container(
    height: 70,
    width: MediaQuery.of(context).size.width,
    child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Name()),
        );
      },
      child: Card(
        shadowColor: Colors.red,
        color: Colors.white,
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: MediaQuery.of(context).size.width / 2,
                child: Text(
                  "\t\t\t\t\t$title",
                  style: cardText(),
                )),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  //color: Colors.red,
                  image: DecorationImage(
                      image: NetworkImage(url), fit: BoxFit.fitHeight)),
            ))
            // Image.network(url),
          ],
        ),
      ),
    ),
  );
}
