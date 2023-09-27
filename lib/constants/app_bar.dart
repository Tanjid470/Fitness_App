import 'package:fitness/screens/chart/developer_chart.dart';
import 'package:fitness/screens/chart/view.dart';
import 'package:flutter/material.dart';

AppBar appBar(String title) {
  return AppBar(
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color.fromARGB(255, 215, 220, 226),
              Color.fromARGB(255, 230, 234, 238),
              Color.fromARGB(255, 223, 233, 243),
            ]),
      ),
    ),
    title: Text(
      title,
      style: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
    ),
    centerTitle: true,
  );
}

AppBar profileAppBar(String title, BuildContext context) {
  return AppBar(
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color.fromARGB(255, 215, 220, 226),
              Color.fromARGB(255, 230, 234, 238),
              Color.fromARGB(255, 223, 233, 243),
            ]),
      ),
    ),
    title: Text(
      title,
      style: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
    ),
    centerTitle: true,
    actions: [
      IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChartView()),
            );
          },
          icon: Icon(Icons.abc))
    ],
  );
}
