import 'package:findgadget_app/core/constants/color_const.dart';
import 'package:findgadget_app/core/constants/font_const.dart';
import 'package:findgadget_app/core/constants/pm_const.dart';
import 'package:findgadget_app/core/constants/weight_const.dart';
import 'package:flutter/material.dart';

class ListBuildItem extends StatelessWidget {
  String photo;
  String name;
  String price;
  ListBuildItem(
      {Key? key, required this.photo, required this.name, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PMConst.kMediumPM,
      child: SizedBox(
          height: 250,
          width: 220,
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 60),
                color: Colors.white,
              ),
              Positioned(
                  right: 40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 73,
                        backgroundImage: NetworkImage(photo),
                      ),
                      const SizedBox(height: 17),
                      Text(
                        name,
                        style: TextStyle(
                            fontWeight: WeightConst.kMediumWeight,
                            fontSize: FontConst.kMediumFont),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        price,
                        style: TextStyle(
                            fontWeight: WeightConst.kMediumWeight,
                            fontSize: FontConst.kMediumFont,
                            color: ColorConst.kSplashBackgroundColor),
                      )
                    ],
                  )),
            ],
          )),
    );
  }
}
