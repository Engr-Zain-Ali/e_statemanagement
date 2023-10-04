import 'dart:async';

import 'package:flutter/material.dart';
class E_StateManagement extends StatefulWidget {
  const E_StateManagement({super.key});

  @override
  State<E_StateManagement> createState() => _E_StateManagementState();
}

class _E_StateManagementState extends State<E_StateManagement> {
  int count=0;
  @override
  void initState(){
    super.initState();
  Timer.periodic(Duration(milliseconds: 1), (timer) {
    count++;
    print(count);
    setState(() {
      
    });
  });
  }
  Widget build(BuildContext context) {
    print('object');
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text(DateTime.now().hour.toString()+":"+DateTime.now().minute.toString()+":"+DateTime.now().second.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
         Center(child: Text(count.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),))
        ],
      ),
    );
  }
}
