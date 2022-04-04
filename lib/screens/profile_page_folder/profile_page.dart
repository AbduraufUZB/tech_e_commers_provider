import 'package:findgadget_app/core/constants/color_const.dart';
import 'package:findgadget_app/core/constants/font_const.dart';
import 'package:findgadget_app/core/constants/pm_const.dart';
import 'package:findgadget_app/core/constants/radius_const.dart';
import 'package:findgadget_app/core/constants/weight_const.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorConst.kHomeBackColor,
        child: Padding(
          padding: PMConst.kExtraLargePM,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("My profile",
                  style: TextStyle(
                      fontSize: FontConst.kExtraLargeFont,
                      fontWeight: WeightConst.kBoldWeight)),
              const SizedBox(height: 30),
              SizedBox(
                height: 180,
                width: 360,
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      height: 200,
                      width: 330,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(RadiusConst.kMediumRadius)),
                    ),
                    Positioned(
                      right: 50,
                      child: Column(
                        children: [
                          Center(
                              child: Column(children: [
                            CircleAvatar(
                              radius: RadiusConst.kExtraLargeRadius + 10,
                              backgroundImage: const NetworkImage(
                                  "https://source.unsplash.com/random"),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Rosina Doe",
                              style: TextStyle(
                                  fontWeight: WeightConst.kMediumWeight,
                                  fontSize: FontConst.kMediumFont),
                            ),
                          ])),
                          const SizedBox(height: 10),
                          Row(
                            children: const [
                              Icon(Icons.location_on_outlined),
                              SizedBox(width: 20),
                              Text(
                                  "Address: 43 Oxford Road\n13 4GR\nManchester, UK")
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              myItem("Edit Profile"),
              myItem("Shopping address"),
              myItem("Order history"),
              myItem("Cards"),
              myItem("Notifications")
            ],
          ),
        ),
      ),
    );
  }

  myItem(String t) {
    return Container(
      height: 60,
      width: 360,
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(RadiusConst.kLargeRadius)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(t, style: TextStyle(fontWeight: WeightConst.kMediumWeight)),
            const Icon(Icons.chevron_right_outlined),
          ],
        ),
      ),
    );
  }
}
