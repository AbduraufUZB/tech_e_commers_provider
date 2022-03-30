import 'package:findgadget_app/core/constants/color_const.dart';
import 'package:findgadget_app/core/constants/font_const.dart';
import 'package:findgadget_app/provider/change_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeDataWidget extends StatelessWidget {
  const ChangeDataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          onPressed: () {
            context.read<ChangeProvider>().firstButtonClick;
          },
          child: Text(
            "Wearable",
            style: TextStyle(
                fontSize: FontConst.kMediumFont - 2,
                color: context.watch<ChangeProvider>().currentindex == 0
                    ? ColorConst.kSplashBackgroundColor
                    : ColorConst.kTextSecondaryColor),
          ),
        ),
        TextButton(
          onPressed: () {
            context.read<ChangeProvider>().secondButtonClick;
          },
          child: Text(
            "Laptops",
            style: TextStyle(
                fontSize: FontConst.kMediumFont - 2,
                color: context.watch<ChangeProvider>().currentindex == 1
                    ? ColorConst.kSplashBackgroundColor
                    : ColorConst.kTextSecondaryColor),
          ),
        ),
        TextButton(
          onPressed: () {
            context.read<ChangeProvider>().thirdButtonClick;
          },
          child: Text(
            "Phones",
            style: TextStyle(
                fontSize: FontConst.kMediumFont - 2,
                color: context.watch<ChangeProvider>().currentindex == 2
                    ? ColorConst.kSplashBackgroundColor
                    : ColorConst.kTextSecondaryColor),
          ),
        ),
      ],
    );
  }
}
