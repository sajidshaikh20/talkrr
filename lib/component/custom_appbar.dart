// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talkrr/screen/profile.dart';
import 'package:talkrr/utils/common/const.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        // backgroundColor: Colors.amber[50],
        leading: const Icon(CupertinoIcons.search, size: 30),
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
          InkWell(
            onTap: () async {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                height: 30,
                width: 33,
                child: Stack(
                  children: const <Widget>[
                    Positioned(
                      bottom: 0,
                      top: 0,
                      right: 2,
                      child: Icon(
                        CupertinoIcons.bell,
                        size: 32,
                      ),
                    ),
                    // if (counter != 0)
                    //   Positioned(
                    //     top: 2,
                    //     right: 0,
                    //     child: Container(
                    //       height: 17,
                    //       width: 17,
                    //       padding: const EdgeInsets.all(2.0),
                    //       decoration: BoxDecoration(
                    //           color: Colors.redAccent,
                    //           shape: BoxShape.circle),
                    //       alignment: Alignment.center,
                    //       child: FittedBox(
                    //           child: Text((counter > 9) ? '9+' : '$counter')),
                    //     ),
                    //   )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
            child: const Hero(
              tag: "profileimg",
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  profileURL,
                ),
                radius: 20,
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
        ],
      ),
    );
  }
}
