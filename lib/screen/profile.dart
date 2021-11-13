import 'package:flutter/material.dart';
import 'package:talkrr/component/fullscreenprofile.dart';

import 'package:talkrr/utils/common/const.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Icon(Icons.arrow_back_ios_new_outlined),
              Text(
                "back",
                style: TextStyle(fontSize: 14),
              )
            ],
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text("save",
                  style: TextStyle(color: Colors.white, fontSize: 20)))
        ],
      ),
      body: ListView(
        // shrinkWrap: true,

        children: [
          const SizedBox(
            height: 35,
          ),
          Center(
            child: Container(
              // color: Colors.deepPurple,
              width: 200,
              child: Stack(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FullScreenprofile()));
                    },
                    child: const Hero(
                      tag: "profileimg",
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(profileURL),
                        radius: 70,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 80,
                      left: 120,
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15.0),
                                    topRight: Radius.circular(15.0))),
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 200,
                                // color: Colors.amber,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: const <Widget>[
                                      Text('upload with'),
                                      ListTile(
                                          leading: Icon(Icons.camera),
                                          title: Text("camera")),
                                      ListTile(
                                          leading:
                                              Icon(Icons.photo_album_outlined),
                                          title: Text("gallary")),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            )),
                      )),
                ],
              ),
            ),
          ),
          Text("Full Name"),
          const TextField(
            decoration: InputDecoration(),
          ),
          const ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text("freind"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text("setting"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const ListTile(
            leading: Icon(Icons.notification_add),
            title: Text("Notification"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const ListTile(
            leading: Icon(Icons.help),
            title: Text("Help"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          SizedBox(
            height: 150,
          ),
          const ListTile(
            leading: Icon(Icons.logout),
            title: Text("Log Out"),
          ),
        ],
      ),
    );
  }
}
