import 'package:flutter/material.dart';
import 'package:dgrprojects/pages/login.dart';
import 'package:dgrprojects/pages/modal.dart';
import 'package:dgrprojects/pages/dry_ice_checklist.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
   /*   backgroundColor: Color(0xFF398AE5),*/
      appBar: AppBar(
        backgroundColor: Color(0xFF398AE5),
        title: Text('Dgr'),
        centerTitle: false,
      ),
      body: ModalView(),
    ));
  }
}
