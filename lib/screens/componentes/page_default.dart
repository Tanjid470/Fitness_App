
import 'package:fitness/constants/app_textStyle.dart';
import 'package:flutter/material.dart';

Container PageHeading(double width, String s) {
    return Container(
            height: 100,
            width: width,
            child: Text(
              s,
              style: pageTitle(),
            ),
          );
  }