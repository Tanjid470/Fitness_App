
import 'package:fitness/constants/App_TextStyle.dart';
import 'package:flutter/material.dart';

Container loginButton(bool isLogin) {
    return Container(
                    width: double.infinity,
                    height:40,
                    decoration:
                        const BoxDecoration(color: Color.fromARGB(255, 101, 212, 86),borderRadius: BorderRadius.all(Radius.circular(15))),
                    child:Center( child:  isLogin ? Text('Login',style: bigFont(),) : Text('Sign up',style: bigFont())),
                     );
  }