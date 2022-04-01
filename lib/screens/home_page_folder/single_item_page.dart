import 'package:findgadget_app/core/constants/pm_const.dart';
import 'package:findgadget_app/models/laptop_model.dart';
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
              alignment: const Alignment(0 , -0.8),
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
                    IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              child: Column(
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}
