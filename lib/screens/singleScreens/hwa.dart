import 'package:fitness/constants/App_Bar.dart';
import 'package:fitness/constants/app_colors.dart';
import 'package:fitness/constants/app_textStyle.dart';

import 'package:fitness/screens/componentes/page_default.dart';
import 'package:fitness/screens/firebase/data/dataserver.dart';
import 'package:fitness/screens/singleScreens/goal.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class HWA extends StatefulWidget {
  const HWA({super.key});

  @override
  State<HWA> createState() => _HWAState();
}

class _HWAState extends State<HWA> {
  DataServer datacollect = Get.find();

  TextEditingController personheight = TextEditingController();
  TextEditingController weight = TextEditingController();
  TextEditingController age = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    
    return Scaffold(
        appBar: appBar("178"),
        body: Container(
            padding: const EdgeInsets.all(20),
            color: AppColors.bgcolor,
            child: Column(
              children: [
                PageHeading(width, "Your Details"),
                Container(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: personheight,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.trending_up),
                          hintText: 'Enter your height',
                          labelText: 'Height ',
                        ),
                      ),
                      TextFormField(
                        controller: weight,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.line_weight),
                          hintText: 'Enter your weight',
                          labelText: 'Weight ',
                        ),
                      ),
                      TextFormField(
                        controller: age,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person_2),
                          hintText: 'Enter your age',
                          labelText: 'Age ',
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 350, 0, 0),
                      color: Colors.transparent,
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            datacollect.heightCm = personheight.text;
                            datacollect.weightKg = weight.text;
                            datacollect.age = age.text;
                            if (personheight.text != "" && weight.text != "") {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Goal()),
                              );
                            } else {
                              Fluttertoast.showToast(
                                  msg: "Give your height and weight");
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
                                child:
                                    Text("Continue", style: miniButtonText())),
                          ),
                        ),
                      )),
                ),
              ],
            )));
  }
}
