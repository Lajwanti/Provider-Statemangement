import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/theme_changer_provider.dart';


class DarkThemeScreen extends StatefulWidget {
  const DarkThemeScreen({Key? key}) : super(key: key);

  @override
  _DarkThemeScreenState createState() => _DarkThemeScreenState();
}

class _DarkThemeScreenState extends State<DarkThemeScreen> {
  @override
  Widget build(BuildContext context) {
    //theme change
    final themechanger = Provider.of<ThemeChangerProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Screen"),
      ),
      body: Column(
        children: [

          RadioListTile<ThemeMode>(
            title: Text("Light Mode"),
              value: ThemeMode.light,
              groupValue: themechanger.themeMode,
              onChanged:themechanger.setTheme
          ),
          RadioListTile<ThemeMode>(
              title: Text("Dark Mode"),
              value: ThemeMode.dark,
              groupValue: themechanger.themeMode,
              onChanged:themechanger.setTheme
          ),
          RadioListTile<ThemeMode>(
              title: Text("System Mode"),
              value: ThemeMode.system,
              groupValue: themechanger.themeMode,
              onChanged:themechanger.setTheme
          ),
          Icon(Icons.favorite,size: 50,)



        ],
      ),
    );
  }
}
