import 'package:critical_failure/src/pages/character_sheet_page.dart';
import 'package:critical_failure/src/pages/home_page.dart';
import 'package:critical_failure/src/routes/routes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: '/',
      routes: getRoutes(),
    );
  }
}