import 'package:flutter/material.dart';
import 'package:one_test_practice/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyAppOne extends StatelessWidget {
  const MyAppOne({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Row(
        children: [
          Flexible(
              fit: FlexFit.tight,
              flex: 2,
              child: ParentBox([
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
          Spacer(
            flex: 1,
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: ParentBox([
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
          Spacer(
            flex: 1,
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: ParentBox([
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
          Spacer(
            flex: 1,
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: ParentBox([
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
  const ParentBox(this.items, {super.key});

  final List<dynamic> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
            border: Border.all(),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [for (var item in items) item],
          ),
        ));
  }
}
