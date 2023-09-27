import 'package:fitness/constants/App_Bar.dart';
import 'package:fitness/constants/app_colors.dart';
import 'package:fitness/constants/app_textStyle.dart';
import 'package:fitness/screens/componentes/page_default.dart';
import 'package:fitness/screens/firebase/data/dataserver.dart';
import 'package:fitness/screens/singleScreens/hwa.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class Name extends StatefulWidget {
  const Name({super.key});

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  DataServer datacollect = Get.put(DataServer());
  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: appBar("Name"),
      body: Container(
        padding: const EdgeInsets.all(20),
        height: height,
        width: width,
        color: AppColors.bgcolor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PageHeading(width, "What's your name ?"),
            Container(
              height: 100,
              width: width,
              child: TextFormField(
                controller: name,
                decoration: const InputDecoration(
                  hintText: 'Enter your name',
                  labelText: 'Name ',
                ),
              ),
            ),
            Expanded(
              child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 350, 0, 0),
                  color: Colors.transparent,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        datacollect.name = name.text;
                        if (name.text != "") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HWA()),
                          );
                        }
                        else{
                           Fluttertoast.showToast(msg: "name doesn't exist");
                        }
                      },
                      child: Container(
                        width: 200,
                        height: 52,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 30, 115, 196),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Center(
                            child: Text("Continue", style: miniButtonText())),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
