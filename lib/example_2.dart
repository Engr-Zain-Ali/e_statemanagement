import 'package:flutter/material.dart';
class Example_2 extends StatefulWidget {
  const Example_2({super.key});

  @override
  State<Example_2> createState() => _Example_2State();
}

class _Example_2State extends State<Example_2> {
  double value=0.1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Slider(value: value, onChanged: (value){


      }),
    );
  }
}
