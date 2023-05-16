import 'package:dgrprojects/pages/dry_ice_checklist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../const_design/design.dart';

class ModalView extends StatefulWidget {
  @override
  _ModalViewState createState() => _ModalViewState();
}

class _ModalViewState extends State<ModalView> {
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
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 50, 30, 0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Məlumatları daxil edin",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.redAccent,
                          ),
                        ),
                        SizedBox(height: 50.0),
                        _buildAirwaybilNo(),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Container(
                                child: _buildOrign(),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Flexible(
                              child: Container(
                                child: _buildDest(),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Flexible(
                              child: Container(
                                child: _buildGroup(),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          children: [
                            Flexible(
                              child: Container(
                                child: _buildClass(),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Flexible(
                              child: Container(
                                child: _buildDivision(),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        _buildDropdownButtonApp(),
                        SizedBox(height: 10.0),
                        _buildDryCheclistPage(context),
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
      Text(
        'Air waybill No',
        style: kblueTextStyle,
      ),
      SizedBox(height: 10.0),
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
      Text(
        'Orign',
        style: kblueTextStyle,
      ),
      SizedBox(height: 10.0),
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
      Text(
        'Dest',
        style: kblueTextStyle,
      ),
      SizedBox(height: 10.0),
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
      Text(
        'Group',
        style: kblueTextStyle,
      ),
      SizedBox(height: 10.0),
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
      Text(
        'Class',
        style: kblueTextStyle,
      ),
      SizedBox(height: 10.0),
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
      Text(
        'Division',
        style: kblueTextStyle,
      ),
      SizedBox(height: 10.0),
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

Widget _buildDropdownButtonApp() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Select',
        style: kblueTextStyle,
      ),
      SizedBox(height: 10.0),
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

Widget _buildDryCheclistPage(BuildContext context) {
  return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DryIceChecklist()),
          );
        },
        style: ElevatedButton.styleFrom(
          primary: Color(0xFFffffff),
          onPrimary: Color(0xFF398AE5),
          /*   side: BorderSide(color: Color(0xFF398AE5), width: 2,),*/
          /* shape: CircleBorder(),*/
          /* minimumSize: Size.square(80),*/
          /* minimumSize: Size.fromRadius(1),*/
          elevation: 20,
          // Elevation
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: BorderSide(color: Colors.white),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: const Text(
            'Dry Ice Checklist Page',
            style: TextStyle(fontSize: 22),
          ),
        ),
      ));
}
