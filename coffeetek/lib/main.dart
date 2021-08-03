import 'package:coffeetek/config/palette.dart';
import 'package:coffeetek/config/scroll.dart';
import 'package:coffeetek/pages/connect_page.dart';
import 'package:coffeetek/pages/homepage.dart';
import 'package:coffeetek/pages/infopage.dart';
import 'package:coffeetek/pages/login_page.dart';
import 'package:coffeetek/pages/screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return ScrollConfiguration(behavior: MyBehavior(), child: child);
      },
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.brown,
          iconTheme: IconThemeData(color: Colors.brown),
          appBarTheme: AppBarTheme(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.white,
          )),
      debugShowCheckedModeBanner: false,
      home: Screen(),
    );
  }
}
