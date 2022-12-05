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
          BlueBox(),
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: BlueBox(),
          ),
          const Spacer(
            flex: 2,
          ),
          SizedBox(
            width: 50,
            child: BlueBox(),
          ),
          Expanded(
            flex: 2,
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
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        color: Colors.blue,
        border: Border.all(),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(size: 30, Icons.add_call),
        ],
      ),
    );
  }
}
