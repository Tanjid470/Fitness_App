

import 'package:fitness/constants/App_Bar.dart';
import 'package:fitness/constants/app_colors.dart';
import 'package:fitness/screens/Profile/profile.dart';
import 'package:fitness/screens/componentes/custom_card.dart';
import 'package:fitness/screens/componentes/network_image.dart';
import 'package:fitness/screens/componentes/page_default.dart';
import 'package:flutter/material.dart';

class Goal extends StatefulWidget {
  const Goal({super.key});

  @override
  State<Goal> createState() => _GoalState();
}

class _GoalState extends State<Goal>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar(""),
      body: Container(
        color: AppColors.bgcolor,
        child: Column(

          children: [
            PageHeading(width, "   What's your goal?"),
            cardCurstom(context, "Gain Muscle", NetImage.male, Colors.white, Profile()),
            cardCurstom(context, "Lose Weigth", NetImage.loseWeight, Colors.white, Profile()),
            cardCurstom(context, "Lose Fat", NetImage.loseFat, Colors.white, Profile()),
          ],
        ),
      ),
    );
  }
}