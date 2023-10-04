import 'dart:html';

import 'package:e_statemanagement/E_one_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class E_one extends StatefulWidget {
  const E_one({super.key});

  @override
  State<E_one> createState() => _E_oneState();
}

class _E_oneState extends State<E_one> {
  @override
  Widget build(BuildContext context) {
   // final provider=Provider.of<ExampleOneProvider>(context ,listen: false);
    print("build");
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOneProvider>(builder: (context,value,child){
            return  Slider(
                min: 0,
                max: 1,
                value: value.Value, onChanged: (val){
              value.setValue(val);


            });

          }),
          Consumer<ExampleOneProvider>(builder: (context,value,child){
            return  Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(value.Value),

                    ),
                    child: Center(child: Text("Container 1",style: TextStyle(color: Colors.white,),)),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(value.Value),

                    ),
                    child: Center(child: Text("Container 1",style: TextStyle(color: Colors.white,),)),
                  ),
                )
              ],
            );

          }),



        ],
      ),
    );
  }
}
