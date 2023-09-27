
import 'package:fitness/constants/app_textStyle.dart';
import 'package:fitness/screens/log/login.dart';

import 'package:flutter/material.dart';

Container miniButton(BuildContext context,String buttonName) {

    return Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.transparent,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()),
                        );
                      },
                      child: Container(
                        width: 90,
                        height: double.infinity,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 154, 195, 233),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child:  Center(
                            child: Text(
                          buttonName,
                          style: miniButtonText()
                        )),
                      ),
                    ),
                  ));
  
  }

   FloatingActionButton floatingButton(BuildContext context, pageRoute) {
    return FloatingActionButton(
      onPressed: () {
         Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  pageRoute),
                        );
      },
      child:const Icon(Icons.skip_next_outlined,size: 35,),
    );
  }