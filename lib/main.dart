import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemangement/buttonScreen.dart';
import 'package:provider_statemangement/home_screen.dart';
import 'package:provider_statemangement/provider/auth_provider.dart';
import 'package:provider_statemangement/provider/count_provider.dart';
import 'package:provider_statemangement/provider/example_one_provider.dart';
import 'package:provider_statemangement/provider/favourite_provider.dart';
import 'package:provider_statemangement/provider/theme_changer_provider.dart';
import 'package:provider_statemangement/screen/count_example.dart';
import 'package:provider_statemangement/screen/example_one.dart';
import 'package:provider_statemangement/screen/favourite/favourite_screen.dart';
import 'package:provider_statemangement/screen/notifyListenerScreen/NotfyListenerScreen.dart';
import 'package:provider_statemangement/screen/themeFolder/darkTheme.dart';
import 'package:provider_statemangement/statefull_widget_screen.dart';
import 'package:provider_statemangement/why_provider_screen.dart';

import 'screen/Login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {



    //register that notifier
    //single provider
    // return ChangeNotifierProvider(
    //   //call that main class
    //   create: (_)=> CountProvider(),
    // child: MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //
    //     primarySwatch: Colors.blue,
    //   ),
    //   home:const  ExampleOneScreen()
    // ),
    // );


    //MultiProvider

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CountProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ExampleOneProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => FavouriteProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ThemeChangerProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => AuthProvider(),
        )
      ],
      child: Builder(
        builder: (context) {
          //theme change
          final themechanger = Provider.of<ThemeChangerProvider>(context);

          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              themeMode:themechanger.themeMode,
              darkTheme: ThemeData(
                brightness: Brightness.dark,
                primarySwatch: Colors.orange,
                primaryColor: Colors.redAccent,
                appBarTheme:const AppBarTheme(
                  backgroundColor: Colors.teal,
                ),
                iconTheme: const IconThemeData(
                  color: Colors.teal

                )
              ),
              theme: ThemeData(
                brightness: Brightness.light,
                primarySwatch: Colors.blue,
              ),
              home: const ButtonScreen());
        }
      ),
    );
  }
}
