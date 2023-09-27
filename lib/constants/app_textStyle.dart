import 'package:flutter/material.dart';

TextStyle appBarTitle() {
  return const TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue);
}

TextStyle bigFont() {
  return const TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 39, 43, 39));
}

TextStyle cardText() {
  return const TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.bold,
      color: Colors.black);
}

TextStyle miniButtonText() {
  return const TextStyle(
      color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18);
}


TextStyle pageSubTitle() {
  return   TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 22);
}
TextStyle pageTitle() {
  return  const TextStyle(
                        color:Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25);
}
