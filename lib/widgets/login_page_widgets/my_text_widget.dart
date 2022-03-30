import 'package:findgadget_app/core/constants/color_const.dart';
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  String s;
  IconData i;
  MyText({Key? key, required this.s, required this.i}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(i, size: 20),
        const SizedBox(width: 13.7),
        Text(s, style: TextStyle(color: ColorConst.kTextSecondaryColor))
      ],
    );
  }
}
