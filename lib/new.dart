import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Home.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/new.dart';

class New extends StatefulWidget {
  const New({Key? key}) : super(key: key);
  @override
  State<New> createState() => _New();
}

int zx = 0;

class _New extends State<New> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "PERSON"),
          ],
          currentIndex: zx,
          onTap: (value) {
            setState(() {
              print(value);
              zx = (value);
              print("H :${zx}");
            });
          }),
      body: View[zx],
    );
  }
}

List View = [HomePage(), MyApp()];
