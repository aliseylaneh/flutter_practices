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
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: Row(
        children: [
          BlueBox(),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: BlueBox(),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: BlueBox(),
          ),
        ],
      ),
    );
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        color: Colors.blue,
        border: Border.all(),
      ),
      child: Row(
        children: const [
          Icon(size: 30, Icons.add_call),
        ],
      ),
    );
  }
}
