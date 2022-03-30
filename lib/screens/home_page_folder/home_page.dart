import 'package:findgadget_app/core/constants/color_const.dart';
import 'package:findgadget_app/core/constants/font_const.dart';
import 'package:findgadget_app/core/constants/pm_const.dart';
import 'package:findgadget_app/core/constants/radius_const.dart';
import 'package:findgadget_app/core/constants/weight_const.dart';
import 'package:findgadget_app/widgets/home_page_widgets/change_data_widget.dart';
import 'package:findgadget_app/widgets/home_page_widgets/my_item.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorConst.kHomeBackColor,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: PMConst.kLargePM,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: TextFormField(
                          onTap: () {
                            Navigator.pushNamed(context, "/search");
                          },
                          decoration: InputDecoration(
                            hintText: "Search",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    RadiusConst.kExtraLargeRadius))),
                            prefixIcon: const Icon(
                              Icons.search_outlined,
                              size: 28,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 46),
                      Text("Order online\ncollect in store",
                          style: TextStyle(
                              color: ColorConst.kBlackColor,
                              fontSize: FontConst.kExtraLargeFont + 10,
                              fontWeight: WeightConst.kMediumWeight)),
                      const SizedBox(height: 50),
                      Expanded(
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          child: const ChangeDataWidget(),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: SizedBox(
                  child: Column(
                    children: [
                      const Expanded(
                        flex: 9,
                        child: SizedBox(
                          child: MyItem(),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          alignment: const Alignment(0.8, 0),
                          child: Text(
                            "see more ->",
                            style: TextStyle(
                                color: ColorConst.kSplashBackgroundColor,
                                fontWeight: WeightConst.kMediumWeight),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
