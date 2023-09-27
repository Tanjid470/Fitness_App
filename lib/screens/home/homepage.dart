import 'package:fitness/constants/App_Bar.dart';
import 'package:fitness/constants/app_colors.dart';
import 'package:fitness/constants/app_textStyle.dart';
import 'package:fitness/screens/componentes/buttom.dart';
import 'package:fitness/screens/componentes/custom_card.dart';
import 'package:fitness/screens/componentes/network_image.dart';
import 'package:fitness/screens/singleScreens/name.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingButton(context, Name()),
      appBar: appBar("Gender"),
      body: Container(
        color: AppColors.bgcolor,
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              //color: Colors.red,
              padding:const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome to Fitify",
                    style:pageSubTitle()
                  ),
                  Text("What's your gender?",style: pageTitle(),),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.5,
              color: const Color.fromARGB(255, 223, 233, 243),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  cardCurstom(context, "Male", NetImage.male, Colors.white,
                      const Name()),
                  cardCurstom(context, "Female", NetImage.female, Colors.white,
                      const Name()),
                  cardCurstomlittle(context, "Binary", ""),
                ],
              ),
            ),
            Expanded(child: miniButton(context, "Login"))
          ],
        ),
      ),
    );
  }
}
