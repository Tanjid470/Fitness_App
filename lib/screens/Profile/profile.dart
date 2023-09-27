
import 'package:fitness/constants/app_bar.dart';
import 'package:fitness/constants/app_colors.dart';
import 'package:fitness/constants/app_textStyle.dart';
import 'package:fitness/screens/Profile/widget/workOutGrid.dart';
import 'package:fitness/screens/componentes/network_image.dart';
import 'package:fitness/screens/componentes/page_default.dart';
import 'package:fitness/screens/firebase/data/dataserver.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  DataServer datacollect = Get.find();
  double result = 0.00;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: profileAppBar("Personal Details",context),
      body: Container(
        color: AppColors.bgcolor,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 120,
              // color: Colors.red,
              child: Row(
                children: [
                  Container(
                    width: width / 3 - 30,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        // color: Colors.amber,
                        image: DecorationImage(
                            image: NetworkImage(NetImage.profile),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: 2 * (width / 3 - 20),
                    //  color: Colors.green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          datacollect.name,
                          style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "age : ${datacollect.age} || height : ${datacollect.heightCm}cm")
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 200,
              // color: Colors.red,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 2,
                        blurStyle: BlurStyle.solid,
                        color: Colors.blue,
                        spreadRadius: 2)
                  ],
                  image: DecorationImage(
                      image: NetworkImage(NetImage.bMI), fit: BoxFit.cover)),
            ),
            Container(
              height: 50,
              // color: Colors.red,
              padding: const EdgeInsets.fromLTRB(40, 10, 50, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PageHeading(width / 2.5, "Your's BMI :"),
                  Text(
                    result.toStringAsFixed(3),
                    style: pageTitle(),
                  ),
                ],
              ),
            ),
            Center(
              child: IconButton(
                  onPressed: calculateBMI,
                  icon: const Icon(
                    Icons.refresh_outlined,
                    size: 30,
                    color: Colors.blue,
                  )),
            ),
            Expanded(
                child: Container(
              // color: Colors.red,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        workOutGrid(width, NetImage.workout1),
                        workOutGrid(width, NetImage.workout2),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        workOutGrid(width, NetImage.workout3),
                        workOutGrid(width, NetImage.workout4),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        workOutGrid(width, NetImage.workout5),
                        workOutGrid(width, NetImage.workout6),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        workOutGrid(width, NetImage.workout1),
                        workOutGrid(width, NetImage.workout2),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        workOutGrid(width, NetImage.workout1),
                        workOutGrid(width, NetImage.workout2),
                      ],
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }

  void calculateBMI() {
    double height = double.parse(datacollect.heightCm) / 100;
    double weight = double.parse(datacollect.weightKg);
    double heightSquare = height * height;
    double resultCal = weight / heightSquare;
    print(result);
    setState(() {
      result = resultCal;
    });
  }
}
