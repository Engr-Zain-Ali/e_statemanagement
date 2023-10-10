import 'package:e_statemanagement/theme_changer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Dark_Theme extends StatefulWidget {
  const Dark_Theme({super.key});

  @override
  State<Dark_Theme> createState() => _Dark_ThemeState();
}

class _Dark_ThemeState extends State<Dark_Theme> {
  @override
  Widget build(BuildContext context) {
    final themeChanger=Provider.of<ThemeChanger>( context);
    return Scaffold(
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
              title: Text("Light Mode"),
              value: ThemeMode.light,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme
          ),
          RadioListTile<ThemeMode>(
              title: Text("Dark Mode"),
              value: ThemeMode.dark,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme
          ),
          RadioListTile<ThemeMode>(
              title: Text("System Mode"),
              value: ThemeMode.system,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme
          ),

        ],


      ),
    );
  }
}
