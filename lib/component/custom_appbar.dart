import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talkrr/screen/notification_screen.dart';
import 'package:talkrr/utils/common/const.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        backgroundColor: Colors.amber[50],
        leading: const Icon(
          CupertinoIcons.search,
          size: 30,
          color: Colors.black,
        ),
        actions: [
          SizedBox(
            height: 29,
            width: 29,
            child: Stack(
              fit: StackFit.expand,
              children: [
                const Icon(
                  CupertinoIcons.envelope_open,
                  size: 28,
                  color: Colors.black /*  */,
                ),
                Positioned(
                  top: 12,
                  right: 0,
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                        color: Colors.orange, shape: BoxShape.circle),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
            width: 33,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Mynotification()));
            },
            child: const Icon(
              CupertinoIcons.bell,
              size: 32,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 33,
          ),
          const CircleAvatar(
            backgroundImage: NetworkImage(
              profileURL,
            ),
            radius: 20,
          ),
          const SizedBox(
            width: 12,
          ),
        ],
      ),
    );
  }
}
