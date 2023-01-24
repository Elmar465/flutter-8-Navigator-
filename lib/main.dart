// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter8/pages/about.dart';
import 'package:flutter8/pages/contact.dart';
import 'package:flutter8/pages/homePage.dart';
  main(){
    return runApp(MyApp());
  }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      initialRoute: '/',
      routes: {
        '/' : (context) => HomePage(),
        '/About Page' : (context) => AboutPage(),
        // '/Contact Page' : (context) => ContactPage()
      },
      onUnknownRoute: ((settings) {
        return MaterialPageRoute(builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text("Error"),
            centerTitle: true,
          ),
          body: Center(
            child: Text("404 Sehife tapilmadi"),
          ),
        )
        );
      }
      ),
    );
  }
}
class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body: Container(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: (() {
                Navigator.pushNamed(context, '/About Page');
              }),
              child: Text("click"),
              )
            ],
          ),
        ),
      ),
    );
  }
}