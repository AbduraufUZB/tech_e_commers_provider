import 'package:findgadget_app/core/constants/color_const.dart';
import 'package:findgadget_app/core/constants/font_const.dart';
import 'package:findgadget_app/core/constants/pm_const.dart';
import 'package:findgadget_app/core/constants/radius_const.dart';
import 'package:findgadget_app/core/constants/weight_const.dart';
import 'package:findgadget_app/provider/search_provider.dart';
import 'package:findgadget_app/widgets/home_page_widgets/list_build_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.chevron_left_outlined),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: TextFormField(
                    onChanged: (v) {
                      context.read<SearchProvider>().clearSearchItems;
                      context.read<SearchProvider>().addSearchItem(v);
                    },
                    decoration: InputDecoration(
                      hintText: "Search",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                              RadiusConst.kExtraLargeRadius + 10)),
                      prefixIcon: const Icon(Icons.search_outlined),
                    ),
                  ),
                ),
              ],
            ),
          context.watch<SearchProvider>().searchList.length != 0 ? Expanded(
                  child: Container(
                    padding: PMConst.kSmallPM,
                    child: ListView.builder(
                      itemCount: context.watch<SearchProvider>().searchList.length,
                      itemBuilder: (ctx, i) {
                        return Center(
                          child: ListBuildItem(
                              photo: context
                                  .watch<SearchProvider>()
                                  .searchList[i]
                                  .img
                                  .toString(),
                              name: context
                                  .watch<SearchProvider>()
                                  .searchList[i]
                                  .name
                                  .toString(),
                              price: context
                                  .watch<SearchProvider>()
                                  .searchList[i]
                                  .price
                                  .toString()),
                        );
                      },
                    ),
                  ),
                ) : Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Center(
                        child: Image(image: AssetImage("assets/images/page_not_found.png")),
                      ),
                      const SizedBox(height: 15),
                      Text("Item not found", style: TextStyle(fontSize: FontConst.kExtraLargeFont, fontWeight: WeightConst.kMediumWeight)),
                      const SizedBox(height: 15),
                      Text("Try a more generic search term or tr\nlooking for alternative products.", textAlign: TextAlign.center, style: TextStyle(color: ColorConst.kTextSecondaryColor, fontSize: FontConst.kMediumFont),)
                    ],
                  ),
                )
          ],
        ),
      ),
    );
  }
}
