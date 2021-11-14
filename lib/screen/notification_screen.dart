import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mynotification extends StatefulWidget {
  const Mynotification({Key? key}) : super(key: key);

  @override
  _MynotificationState createState() => _MynotificationState();
}

class _MynotificationState extends State<Mynotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber[50],
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text(
            'Notification',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, i) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 61,
                                  width: 62,
                                  color: Colors.transparent,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 0,
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          decoration: const BoxDecoration(
                                            color: Colors.black,
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://scontent.fpnq14-1.fna.fbcdn.net/v/t1.6435-1/p200x200/122867679_785669148945818_6879322257776993377_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=7206a8&_nc_ohc=FP_QI1KM8csAX_8ov_c&_nc_ht=scontent.fpnq14-1.fna&oh=d08b7cb942545459c69f66531a66ba4b&oe=61B62145')),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(21)),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 30,
                                        left: 25,
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: const BoxDecoration(
                                            color: Colors.black,
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/160/facebook/92/birthday-cake_1f382.png')),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(21)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Text(
                                          'Vanshika Belapurkar ',
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Icon(
                                          Icons.more_vert_rounded,
                                          size: 15.5,
                                          color: Colors.grey[500],
                                        )
                                      ],
                                    ),
                                    const Text(
                                      ' & other 7 have thier birthday\n today. Wish them well!',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 5.5,
                                    ),
                                    Text(
                                      ' 21 minutes ago',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey.shade500,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      )),
                );
              }),
        ));
  }
}
