import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../const_design/design.dart';
class DryIceChecklist extends StatefulWidget {
  const DryIceChecklist({Key? key}) : super(key: key);
  @override
  State<DryIceChecklist> createState() => _DryIceChecklistState();
}
class _DryIceChecklistState extends State<DryIceChecklist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(),
            ),
          ],
        ),
      ),
    );
  }
}
