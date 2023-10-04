import 'package:flutter/material.dart';
class Favourit_Screen extends StatefulWidget {
  const Favourit_Screen({super.key});

  @override
  State<Favourit_Screen> createState() => _Favourit_ScreenState();
}

class _Favourit_ScreenState extends State<Favourit_Screen> {
  List<int> selecteditem=[];
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourit"),

      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context,index){
                  return ListTile(
                    onTap: (){
                      selecteditem.add(index);
                      setState(() {
                        
                      });
                    },

                    title: Text("Item"+index.toString()),
                    trailing: Icon(
                        selecteditem.contains(index)?Icons.favorite:Icons.favorite_outline),
                  );

            }),
          )
        ],
      ),
    );
  }
}
