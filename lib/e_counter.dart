import 'package:e_statemanagement/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class E_Counter extends StatefulWidget {
  const E_Counter({super.key});

  @override
  State<E_Counter> createState() => _E_CounterState();
}

class _E_CounterState extends State<E_Counter> {
  @override

  Widget build(BuildContext context) {
    final countProvider=Provider.of<CountProvider>(context,listen: false);
    print('build');
    return Scaffold(
      body: Center(child:Consumer<CountProvider>(builder: (BuildContext context, value,  child) {
        return Text(value.count.toString(), style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
        );

      },),
      ),

      floatingActionButton:FloatingActionButton(
        onPressed: (){
          countProvider.setCount();

        },
        child: Icon(Icons.add),
      ),




    );
  }
}
