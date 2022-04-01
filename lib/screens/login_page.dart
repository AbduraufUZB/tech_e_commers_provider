import 'package:findgadget_app/core/constants/color_const.dart';
import 'package:findgadget_app/core/constants/font_const.dart';
import 'package:findgadget_app/core/constants/pm_const.dart';
import 'package:findgadget_app/core/constants/radius_const.dart';
import 'package:findgadget_app/core/constants/weight_const.dart';
import 'package:findgadget_app/widgets/login_page_widgets/email_form_widget.dart';
import 'package:findgadget_app/widgets/login_page_widgets/my_text_widget.dart';
import 'package:findgadget_app/widgets/login_page_widgets/password_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kLoginBackColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              alignment: const Alignment(-0.5, 0.4),
              color: ColorConst.kLoginBackColor,
              child: Text(
                "Welcome\nback",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: ColorConst.kWhiteColor,
                    fontSize: FontConst.kExtraLargeFont + 25,
                    fontWeight: WeightConst.kBoldWeight),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: double.infinity,
              padding: PMConst.kExtraLargePM,
              decoration: BoxDecoration(
                color: ColorConst.kWhiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(RadiusConst.kMediumRadius),
                  topRight: Radius.circular(RadiusConst.kMediumRadius),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                        fontSize: FontConst.kMediumFont,
                        fontWeight: WeightConst.kMediumWeight),
                  ),
                  const SizedBox(height: 40),
                  MyText(s: "Email", i: Icons.email_outlined),
                  const SizedBox(height: 12.38),
                  const EmailWidget(),
                  const SizedBox(height: 40),
                  MyText(s: "Password", i: Icons.lock_outline),
                  const SizedBox(height: 12.38),
                  const PasswordWidget(),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("Forgot passcode?",
                      style:
                          TextStyle(color: ColorConst.kSplashBackgroundColor)),
                  const SizedBox(height: 50),
                  InkWell(
                    onTap: () => Navigator.pushNamedAndRemoveUntil(context, "/tab", (route) => false),
                    child: Container(
                      height: 70,
                      width: 314,
                      decoration: BoxDecoration(
                        color: ColorConst.kLoginBackColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(RadiusConst.kMediumRadius),
                        ),
                      ),
                      child: Center(child: Text("Login", style: TextStyle(color: ColorConst.kWhiteColor, fontSize: FontConst.kLargeFont, fontWeight: WeightConst.kMediumWeight))),
                    ),
                  ),
                  const SizedBox(height: 19),
                  Center(child: Text("Create account", style: TextStyle(color: ColorConst.kLoginBackColor),))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}