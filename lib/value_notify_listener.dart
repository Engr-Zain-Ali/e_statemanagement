import 'package:flutter/material.dart';
class NotifyListener extends StatelessWidget {
  const NotifyListener({super.key});

  @override
  Widget build(BuildContext context) {

    ValueNotifier<int>_counter=ValueNotifier<int>(0);
    ValueNotifier<bool>Toggle=ValueNotifier<bool>(false);
    print("bild");

    return Scaffold(
      body: Column(
        children: [
          ValueListenableBuilder(valueListenable: Toggle, builder: (Context,value,child){
            return TextFormField(
              obscureText: Toggle.value,
              decoration: InputDecoration(
                hintText: "Password",
                suffixIcon: InkWell(
                    onTap: (){
                      Toggle.value=!Toggle.value;

                    },
                    child: Icon( Toggle.value?Icons.visibility_off_outlined:Icons.visibility)),



              ),
            );
          }),

          ValueListenableBuilder(
            valueListenable: _counter,
            builder:(context,value,child){

              return Text(_counter.value.toString(),style: TextStyle(fontSize: 29,fontWeight: FontWeight.bold
              ),



              );
            }

          ),
        ],
      ),
floatingActionButton: FloatingActionButton(
  onPressed: (){
    _counter.value++;
    print(_counter.value.toString()
    );

    
  },
  child: Icon(Icons.add),
),
    );
  }
}
