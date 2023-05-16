import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../const_design/design.dart';
class DryIceChecklist extends StatefulWidget {
  @override
  _DryIceChecklistState createState() => _DryIceChecklistState();
}
class _DryIceChecklistState extends State<DryIceChecklist> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF398AE5),
          title: Text('Dgr'),
          centerTitle: false,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 10.0),
                        _buildAirwaybilNo(),
                        SizedBox( height: 20.0,),
                        Row(
                          children: [
                            Flexible(
                              child: Container(
                                child:_buildOrign(),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Flexible(
                              child: Container(
                                child:_buildDest(),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Flexible(
                              child: Container(
                                child:_buildGroup(),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          children: [
                            Flexible(
                              child: Container(
                                child:_buildClass(),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Flexible(
                              child: Container(
                                child:_buildDivision(),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        _buildSelect(),
                        SizedBox(height: 10,),
                       _buildInfo(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
Widget _buildAirwaybilNo() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        decoration: kLightBlueBoxDecorationStyle,
        height: 50.0,
        child: TextField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Color(0xFF398AE5),
            fontFamily: 'OpenSans',
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.fromLTRB(10, 2, 0, 0),
            hintText: 'Air waybill No',
            hintStyle: kblueTextStyle,
          ),
        ),
      ),
    ],
  );
}
Widget _buildOrign() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        decoration: kLightBlueBoxDecorationStyle,
        height: 50.0,
        child: TextField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Color(0xFF398AE5),
            fontFamily: 'OpenSans',
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.fromLTRB(10, 2, 0, 0),
            hintText: 'Orign',
            hintStyle: kblueTextStyle,
          ),
        ),
      ),
    ],
  );
}
Widget _buildDest() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[

    
      Container(
        alignment: Alignment.centerLeft,
        decoration: kLightBlueBoxDecorationStyle,
        height: 50.0,
        child: TextField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Color(0xFF398AE5),
            fontFamily: 'OpenSans',
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.fromLTRB(10, 2, 0, 0),
            hintText: 'Dest',
            hintStyle: kblueTextStyle,
          ),
        ),
      ),
    ],
  );
}
Widget _buildGroup() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[

    
      Container(
        alignment: Alignment.centerLeft,
        decoration: kLightBlueBoxDecorationStyle,
        height: 50.0,
        child: TextField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Color(0xFF398AE5),
            fontFamily: 'OpenSans',
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.fromLTRB(10, 2, 0, 0),
            hintText: 'Group',
            hintStyle: kblueTextStyle,
          ),
        ),
      ),
    ],
  );
}

Widget _buildClass() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[

    
      Container(
        alignment: Alignment.centerLeft,
        decoration: kLightBlueBoxDecorationStyle,
        height: 50.0,
        child: TextField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Color(0xFF398AE5),
            fontFamily: 'OpenSans',
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.fromLTRB(10, 2, 0, 0),
            hintText: 'Class',
            hintStyle: kblueTextStyle,
          ),
        ),
      ),
    ],
  );
}
Widget _buildDivision() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[

    
      Container(
        alignment: Alignment.centerLeft,
        decoration: kLightBlueBoxDecorationStyle,
        height: 50.0,
        child: TextField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Color(0xFF398AE5),
            fontFamily: 'OpenSans',
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.fromLTRB(10, 2, 0, 0),
            hintText: 'Division',
            hintStyle: kblueTextStyle,
          ),
        ),
      ),
    ],
  );
}

Widget _buildSelect() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
    
      Container(
        alignment: Alignment.centerLeft,
        decoration: kLightBlueBoxDecorationStyle,
        height: 50.0,
        child: TextField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Color(0xFF398AE5),
            fontFamily: 'OpenSans',
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.fromLTRB(10, 2, 0, 0),
            hintText: 'Select',
            hintStyle: kblueTextStyle,
          ),
        ),
      ),
    ],
  );
}

Widget  _buildInfo(){
  double _value = 20;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[

      Container(
        alignment: Alignment.centerLeft,
        decoration: kLightBlueBoxDecorationStyle,
        height: 350,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 25, 0, 15),
              child: Text('Quantity and Type of Packing' ,
               textAlign: TextAlign.center,
               style: TextStyle(
                color: Colors.red,
                fontSize: 24,

              ),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Text('Two copies in English and in the IATA format including the air certification statement. This question maybe indicated as not applicable only way the Shipper’s Declaration Data is submitted electronically.' ,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child:TextButton(
                style: TextButton.styleFrom( textStyle: const TextStyle(fontSize: 20),),

                  child: Text('10.01.05'),
                  onPressed: () {

                  }),

            ),
            Slider(
              min: 0.0,
              max: 100.0,
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            )
          ],

        ),
      ),
    ],
  );
}

void setState(Null Function() param0) {
}




