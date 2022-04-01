import 'package:findgadget_app/core/constants/color_const.dart';
import 'package:findgadget_app/core/constants/font_const.dart';
import 'package:findgadget_app/core/constants/pm_const.dart';
import 'package:findgadget_app/core/constants/weight_const.dart';
import 'package:findgadget_app/models/laptop_model.dart';
import 'package:findgadget_app/widgets/home_page_widgets/set_container.dart';
import 'package:flutter/material.dart';

class SingleItemPage extends StatelessWidget {
  LaptopModel lst;
  SingleItemPage({Key? key, required this.lst}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              alignment: const Alignment(0, -0.8),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(lst.img.toString()))),
              child: Padding(
                padding: PMConst.kLargePM,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.chevron_left,
                            size: 35, color: Colors.redAccent)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_outline))
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: SizedBox(
              child: Padding(
                padding: PMConst.kLargePM,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Center(
                        child: Text(lst.name.toString(),
                            style: TextStyle(
                                fontWeight: WeightConst.kMediumWeight,
                                fontSize: FontConst.kLargeFont))),
                    const SizedBox(height: 29),
                    const Text("Colors"),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SetContainer(c: Colors.blue, n: "Sky Blue"),
                        SetContainer(c: const Color(0XFFC9A19C), n: "Rose Gold"),
                        SetContainer(c: Colors.greenAccent, n: "Green")
                      ],
                    ),
                    const SizedBox(height: 30),
                    Text("Get Apple TV+ free for a year", style: TextStyle(fontWeight: WeightConst.kMediumWeight, fontSize: FontConst.kMediumFont)),
                    const SizedBox(height: 15),
                    Text("Available when you purchase any new\niPhone, iPad, iPod Touch, Mac or Apple TV,\n£4.99/month after free trial.", style: TextStyle(fontSize: FontConst.kMediumFont, color: ColorConst.kTextSecondaryColor)),
                    const SizedBox(height: 15),
                    Text("Full description ->", style: TextStyle(color: ColorConst.kSplashBackgroundColor, fontWeight: WeightConst.kMediumWeight)),
                    Expanded(child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row()
                      ],
                    ))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
