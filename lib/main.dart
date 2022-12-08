import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/flex.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Row(
        children: [
          Flexible(
              fit: FlexFit.tight,
              flex: 2,
              child: ParentBox(const [
                Icon(
                  Icons.call,
                  color: Colors.black,
                  size: 30,
                ),
                DefaultTextStyle(
                  style: TextStyle(fontSize: 10),
                  child: Text('Call'),
                )
              ])),
          const Spacer(
            flex: 1,
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: ParentBox(const [
              Icon(
                Icons.message,
                color: Colors.black,
                size: 30,
              ),
              DefaultTextStyle(
                style: TextStyle(fontSize: 10),
                child: Text('Message'),
              )
            ]),
          ),
          const Spacer(
            flex: 1,
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: ParentBox(const [
              Icon(
                Icons.contact_page,
                color: Colors.black,
                size: 30,
              ),
              DefaultTextStyle(
                style: TextStyle(fontSize: 10),
                child: Text('Contacts'),
              )
            ]),
          ),
          const Spacer(
            flex: 1,
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: ParentBox(const [
              Icon(
                Icons.settings,
                color: Colors.black,
                size: 30,
              ),
              DefaultTextStyle(
                style: TextStyle(fontSize: 10),
                child: Text('settings'),
              )
            ]),
          ),
        ],
      ),
    );
  }
}

class ParentBox extends StatelessWidget {
  ParentBox(this.items);

  final List<dynamic> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        color: Colors.blue,
        border: Border.all(),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [for (var item in items) item],
      ),
    );
  }
}
