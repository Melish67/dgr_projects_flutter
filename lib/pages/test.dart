import 'package:flutter/material.dart';

void main() => runApp(SliderHaqqinda());

class SliderHaqqinda extends StatelessWidget {
  static String basliq = 'Progress bar';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: basliq,
      theme: ThemeData(
          backgroundColor: Colors.blue[300], //appbar rengle
          scaffoldBackgroundColor: Colors.blue[300] //body rengle
      ),
      home: Scaffold(
        appBar: AppBar(title: Text(basliq)),
        body: SliderMain(),
      ),
    );
  }
}

class SliderMain extends StatefulWidget {
  @override
  State<SliderMain> createState() => _SliderMainState();
}

class _SliderMainState extends State<SliderMain> {
  double _sliderBaslangicDeyeri = 10;
  double _sliderBaslangicDeyeri2 = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          flex: 1,
          child: Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.circular(16.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Komputerin donmasi problemi var?',
                  style: TextStyle(
                    color: Colors.red[500],
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text(
                    '$_sliderBaslangicDeyeri.round()',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Slider(
                  value: _sliderBaslangicDeyeri,
                  min: 0,
                  max: 100,
                  divisions: 5,
                  label: _sliderBaslangicDeyeri.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _sliderBaslangicDeyeri = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ),

      ],
    );
  }
}
