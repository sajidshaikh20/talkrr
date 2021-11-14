import 'package:flutter/material.dart';
import 'package:talkrr/component/custom_appbar.dart';
import 'package:talkrr/component/custom_bottom_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          child: CustomAppBar(), preferredSize: Size.fromHeight(43)),
      bottomNavigationBar: CustomerBottomBar(),
    );
  }
}
