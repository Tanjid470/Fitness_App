
 import 'package:fitness/constants/app_textStyle.dart';
import 'package:flutter/material.dart';

Container workOutGrid(double width, String workout1) {
    return Container(
                        width: width / 2.3,
                        height: 70,
                        margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                        decoration: BoxDecoration(
                          borderRadius:const BorderRadius.all(Radius.circular(15)),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 2,
                              blurStyle: BlurStyle.inner,
                              color: Color.fromARGB(255, 126, 10, 101),
                              spreadRadius: 1
                            )
                          ],
                           // color: Colors.grey[300],
                            image: DecorationImage(
                               colorFilter: new ColorFilter.mode(Colors.transparent.withOpacity(0.6), BlendMode.dstATop),
                                image: NetworkImage(workout1),fit: BoxFit.cover)),
                     child: Text(" 10 X 3",style:miniButtonText() ,),
                      );
  }