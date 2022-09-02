import 'package:flutter/material.dart';
import 'package:jobs/route.dart';
import 'package:jobs/src/pages/conta_bancaria_page.dart';
import 'package:jobs/src/pages/home_page.dart';
import 'package:jobs/src/pages/login_page.dart';
import 'package:jobs/src/pages/register_acesso_page.dart';
import 'package:jobs/src/pages/register_endereco_page.dart';
import 'package:jobs/src/pages/register_page.dart';
import 'package:nuvigator/nuvigator.dart';

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Services',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.orange,
          accentColor: Colors.orange,
          colorScheme: ColorScheme.light()
      ),
      home: Nuvigator(
        router: MyRouter(),
      ),
    );
  }
}

