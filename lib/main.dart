import 'package:flutter/material.dart';
import 'package:foodpanda/Screens/SplashScreen.dart';

import 'constants/color.dart';
import 'constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: MyColors.navy,
            brightness: Brightness.light,
            scaffoldBackgroundColor: const Color(0xfffcfcfc),
            appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white,
                elevation: .2,
                titleTextStyle:
                    TextStyle(fontFamily: Bold, color: Color(0xff323232)),
                iconTheme: IconThemeData(color: MyColors.primaryColor))),
        home: SplashScreen());
  }
}
