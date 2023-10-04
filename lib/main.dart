////Example 1 of provider use......
// import 'package:e_statemanagement/E_one.dart';
// import 'package:e_statemanagement/e_counter.dart';
// import 'package:e_statemanagement/e_statemanagement.dart';
// import 'package:e_statemanagement/example_2.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import 'count_provider.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(create: (_)=>CountProvider(),
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//         ),
//         home: E_one(),
//       ),
//     );
//   }
// }
//Example 2 of provider use......
import 'package:e_statemanagement/E_one.dart';
import 'package:e_statemanagement/E_one_Provider.dart';
import 'package:e_statemanagement/e_counter.dart';
import 'package:e_statemanagement/e_statemanagement.dart';
import 'package:e_statemanagement/example_2.dart';
import 'package:e_statemanagement/favourit_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'count_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>CountProvider()),
        ChangeNotifierProvider(create: (_)=>ExampleOneProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Favourit_Screen(),

      ),
    );
  }
}

