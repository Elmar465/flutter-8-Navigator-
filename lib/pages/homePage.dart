import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter8/pages/about.dart';
import 'package:flutter8/pages/contact.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Container(
                margin:EdgeInsets.all(10),
                child: ElevatedButton(
                onPressed: (() async{
                  Navigator.pushNamed(context, '/Contact Page');
                }
                ),
                child: Text("Go to About Page"),
              )
              ),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.all(10),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => AboutPage())));              
                  },
                  child: Text("Go to About Page"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}