import 'package:flutter/material.dart';
import 'package:one_test_practice/main.dart';

class PersonalCard extends StatelessWidget {
  const PersonalCard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [MyCard()],
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/person_1.png'),
                radius: 25,
                backgroundColor: Colors.white,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultTextStyle(
                    style: TextStyle(fontSize: 27, fontStyle: FontStyle.normal),
                    child: Text('Ali Seylaneh')),
                DefaultTextStyle(
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal),
                    child: Text('Junior Flutter Developer'))
              ],
            )
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DefaultTextStyle(
                style: TextStyle(fontSize: 15, fontStyle: FontStyle.normal),
                child: Text('123 Main Street')),
            DefaultTextStyle(
                style: TextStyle(fontSize: 15, fontStyle: FontStyle.normal),
                child: Text('(415) 555-0198'))
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ParentBox([
              Icon(
                Icons.accessibility,
                color: Colors.white,
                size: 30,
              ),
            ]),
            ParentBox([
              Icon(
                Icons.timer,
                color: Colors.white,
                size: 30,
              ),
            ]),
            ParentBox([
              Icon(
                Icons.phone_android,
                color: Colors.white,
                size: 30,
              ),
            ]),
            ParentBox([
              Icon(
                Icons.phone_iphone,
                color: Colors.white,
                size: 30,
              ),
            ]),
          ],
        ),
      ],
    );
  }
}
