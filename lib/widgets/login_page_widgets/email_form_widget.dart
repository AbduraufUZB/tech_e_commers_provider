import 'package:flutter/material.dart';
class EmailWidget extends StatelessWidget {
  const EmailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextFormField(
            decoration: const InputDecoration(hintText: "your email")));
  }
}
