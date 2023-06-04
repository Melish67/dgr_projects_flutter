import 'dart:math';

import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  @override
  _MyAnimatedContainerState createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  Color _containerColor = Colors.yellow; // Başlangıç rengi

  void _changeColor() {
    setState(() {
      // Rastgele bir renk seçmek için kullanabilirsiniz
/*
      _containerColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
*/
    _containerColor=Colors.green;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: AnimatedContainer(
        duration: Duration(seconds: 1), // Animasyon süresi
        color: _containerColor,
        width: 200,
        height: 200,
      ),
    );
  }
}

/*
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Container Rengi Değiştirme'),
      ),
      body: Center(
        child: MyAnimatedContainer(),
      ),
    ),
  ));
}
*/
