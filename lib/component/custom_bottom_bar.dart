import 'package:flutter/material.dart';

class CustomerBottomBar extends StatelessWidget {
  const CustomerBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            SizedBox(width: 25.0),
            Icon(
              Icons.home_filled,
              size: 30,
            ),
            Spacer(),
            Icon(
              Icons.chat_rounded,
              size: 30,
            ),
            Spacer(),
            Icon(
              Icons.video_call,
              size: 30,
            ),
            SizedBox(
              width: 25.0,
            ),
          ],
        ),
      ),
    );
  }
}
