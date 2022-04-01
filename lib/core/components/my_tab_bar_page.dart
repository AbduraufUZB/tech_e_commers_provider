import 'package:findgadget_app/screens/favourite_page_folder/favourite_page.dart';
import 'package:findgadget_app/screens/home_page_folder/home_page.dart';
import 'package:findgadget_app/screens/profile_page_folder/profile_page.dart';
import 'package:findgadget_app/screens/shop_page_folder/shop_page.dart';
import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({Key? key}) : super(key: key);

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: [
          Homepage(),
          FavouritePage(),
          ProfilePage(),
          ShopPage()
        ],
      ),
      bottomNavigationBar: myTab,
    );
  }

  TabBar get myTab => TabBar(
        labelColor: Colors.black,
        controller: _tabController,
        tabs: const [
          Tab(
            icon: Icon(Icons.home_outlined),
            text: "Home",
          ),
          Tab(
            icon: Icon(Icons.favorite_outline),
            text: "Favourite",
          ),
          Tab(
            icon: Icon(Icons.person_outline),
            text: "Profile",
          ),
          Tab(
            icon: Icon(Icons.shopping_cart),
            text: "Shop",
          ),
        ],
      );
}
