import 'package:findgadget_app/core/constants/color_const.dart';
import 'package:findgadget_app/core/constants/font_const.dart';
import 'package:findgadget_app/core/constants/pm_const.dart';
import 'package:findgadget_app/core/constants/weight_const.dart';
import 'package:findgadget_app/mock/mock_data.dart';

import 'package:findgadget_app/provider/change_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyItem extends StatelessWidget {
  const MyItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (ctx, i) {
        return Padding(
          padding: PMConst.kMediumPM,
          child: Container(
              height: 220,
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
                            backgroundImage: NetworkImage(
                              MockData
                                  .myData[context
                                      .watch<ChangeProvider>()
                                      .currentindex][i]
                                  .img
                                  .toString(),
                            ),
                          ),
                          const SizedBox(height: 17),
                          Text(
                            MockData
                                .myData[context
                                    .watch<ChangeProvider>()
                                    .currentindex][i]
                                .name
                                .toString(),
                                style: TextStyle(
                                  fontWeight: WeightConst.kMediumWeight,
                                  fontSize: FontConst.kMediumFont
                                ),
                          ),
                          const SizedBox(height: 31),
                          Text(
                            MockData
                                .myData[context
                                    .watch<ChangeProvider>()
                                    .currentindex][i]
                                .price
                                .toString(),
                                style: TextStyle(
                                  fontWeight: WeightConst.kMediumWeight,
                                  fontSize: FontConst.kMediumFont,
                                  color: ColorConst.kSplashBackgroundColor
                                ),
                          )
                        ],
                      )),
                ],
              )),
        );
      },
      itemCount:
          MockData.myData[context.watch<ChangeProvider>().currentindex].length,
    );
  }
}
