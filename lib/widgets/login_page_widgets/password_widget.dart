import 'package:findgadget_app/core/constants/color_const.dart';
import 'package:findgadget_app/core/constants/font_const.dart';
import 'package:findgadget_app/provider/password_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PasswordWidget extends StatelessWidget {
  const PasswordWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextFormField(
        obscureText: context.watch<PasswordProvider>().show,
        decoration: InputDecoration(
            hintText: "your dpassword",
            suffix: TextButton(
                onPressed: () {
                  context.read<PasswordProvider>().changeShowPass;
                },
                child: Text("Show",
                    style: TextStyle(
                        color: ColorConst.kSplashBackgroundColor,
                        fontSize: FontConst.kSmallFont)))),
      ),
    );
  }
}
