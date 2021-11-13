import 'package:flutter/material.dart';
import 'package:talkrr/utils/common/const.dart';

class FullScreenprofile extends StatelessWidget {
  const FullScreenprofile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Hero(tag: "profileimg", child: Image.network(profileURL))),
      ),
    );
  }
}
