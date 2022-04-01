import 'package:findgadget_app/core/constants/color_const.dart';
import 'package:findgadget_app/core/constants/radius_const.dart';
import 'package:flutter/material.dart';

class SetContainer extends StatelessWidget {
  Color c;
  String n;
  SetContainer({Key? key, required this.c, required this.n}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 40,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              backgroundColor: c,
              radius: 10,
            ),
            Text(n)
          ],
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: ColorConst.kBlackColor),
        borderRadius:
            BorderRadius.all(Radius.circular(RadiusConst.kMediumRadius)),
      ),
    );
  }
}
