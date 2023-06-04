import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  @override
  _MyAnimatedContainerState createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  Color _containerColor = Colors.blue; // Başlangıç rengi
  double _containerOffset = 0.0; // Başlangıç konumu
  bool _showAnswer = false; // Cevabı gösterme durumu

  void _toggleAnswer() {
    setState(() {
      _showAnswer = !_showAnswer;
      _containerColor = _showAnswer ? Colors.green : Colors.red;
      _containerOffset = _showAnswer ? -100.0 : 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: _toggleAnswer,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            transform: Matrix4.translationValues(0.0, _containerOffset, 0.0),
            color: _containerColor,
            width: 200,
            height: 200,
          ),
        ),
        SizedBox(height: 16.0),
        Text(
          _showAnswer ? 'Evet' : 'Hayır',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Container Rengi ve Kaydırma'),
      ),
      body: Center(
        child: MyAnimatedContainer(),
      ),
    ),
  ));
}
