import 'package:findgadget_app/core/constants/color_const.dart';
import 'package:findgadget_app/core/constants/font_const.dart';
import 'package:findgadget_app/core/constants/pm_const.dart';
import 'package:findgadget_app/core/constants/radius_const.dart';
import 'package:findgadget_app/core/constants/weight_const.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kSplashBackgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: PMConst.kExtraLargePM,
                child: Text(
                  "Find your\nGadget",
                  style: TextStyle(
                      color: ColorConst.kWhiteColor,
                      fontSize: FontConst.kExtraLargeFont + 30,
                      fontWeight: WeightConst.kBoldWeight),
                ),
              ),
            ),
            const Expanded(
              flex: 4,
              child: Center(
                child: Image(
                  image: AssetImage("assets/images/splash_photo.png"),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: InkWell(
                  onTap: () => Navigator.pushNamedAndRemoveUntil(context, "/login", (route) => false),
                  child: Container(
                    height: 70,
                    width: 314,
                    decoration: BoxDecoration(
                      color: ColorConst.kWhiteColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(RadiusConst.kMediumRadius),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Get started",
                        style: TextStyle(
                            color: ColorConst.kSplashBackgroundColor,
                            fontWeight: WeightConst.kMediumWeight,
                            fontSize: FontConst.kMediumFont),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}