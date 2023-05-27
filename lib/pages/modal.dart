import 'package:dgrprojects/pages/dry_ice_checklist.dart';
import 'package:dgrprojects/pages/new_dry.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../const_design/design.dart';
import 'package:multiselect/multiselect.dart';


class ModalView extends StatefulWidget {
  @override
  _ModalViewState createState() => _ModalViewState();
}

class _ModalViewState extends State<ModalView> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
    /*  theme: ThemeData(
          colorSchemeSeed:  Colors.white, useMaterial3: true,
         textTheme:  TextTheme(
        headline1: TextStyle(color: Colors.deepPurpleAccent),
         ),
      ),*/
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  DryIceChecklist()),
                );
              },
              icon: new Image.asset('assets/images'
                  '/next.png'),
            ),
          ],
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
                    margin: EdgeInsets.fromLTRB(30, 90, 30, 0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Məlumatları daxil edin",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.redAccent,
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),

                        Row(
                          children: [
                            Flexible(
                              flex: 8,
                              child: Container(
                                child: _buildClassDivision(),
                              ),
                            ),

                            Flexible(
                              flex: 2,
                              child: Container(
                                 child: _buildDialog(context),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        _buildSelect(),
                        SizedBox(height: 10,),
                        _buildAirwaybilNo(),
                        SizedBox(
                          height: 10.0,
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


                      /*  _buildDryCheclistPage(context),*/
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
      SizedBox(height: 8.0),
      Container(
        alignment: Alignment.centerLeft,
        decoration: kLightBlueBoxDecorationStyle,
        height: 40.0,
        child: TextField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Color(0xFF398AE5),
            fontFamily: 'OpenSans',
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 7),
            hintText: 'Air waybill No',
            hintStyle: klightblueTextStyle,
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
      SizedBox(height: 8.0),
      Container(
        alignment: Alignment.centerLeft,
        decoration: kLightBlueBoxDecorationStyle,
        height: 40.0,
        child: TextField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Color(0xFF398AE5),
            fontFamily: 'OpenSans',
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 7),
            hintText: 'Orign',
            hintStyle: klightblueTextStyle,
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
      SizedBox(height: 8.0),
      Container(
        alignment: Alignment.centerLeft,
        decoration: kLightBlueBoxDecorationStyle,
        height: 40.0,
        child: TextField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Color(0xFF398AE5),
            fontFamily: 'OpenSans',
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 7),
            hintText: 'Dest',
            hintStyle: klightblueTextStyle,
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
      SizedBox(height: 8.0),
      Container(
        alignment: Alignment.centerLeft,
        decoration: kLightBlueBoxDecorationStyle,
        height: 40.0,
        child: TextField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Color(0xFF398AE5),
            fontFamily: 'OpenSans',
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 7),
            hintText: 'Group',
            hintStyle: klightblueTextStyle,
          ),
        ),
      ),
    ],
  );
}

Widget _buildClassDivision() {
  List<String> yazi = ['Class', 'Division',];
  List<String> secilmishYazi= [];
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        decoration: kLightBlueBoxDecorationStyle,
        height: 40,
        child: DropDownMultiSelect(
          hintStyle: new TextStyle(
            color: Colors.blue,
            fontSize: 18.0,
          ),
          icon: Icon(
            Icons.arrow_drop_down,
              color: Color(0xFF3A93F5),
          ),
          decoration: InputDecoration(border: InputBorder.none),
          options: yazi,
          selectedValues: secilmishYazi,
          onChanged: (value) {
            print('secilimis qutu $value');
            setState(() {
              secilmishYazi = value;
            });
            print('you have selected $secilmishYazi qutu.');
          },
          whenEmpty: 'Class/Division ',
        ),
      ),

    ],
  );
}

void setState(Null Function() param0) {
}



Widget _buildSelect() {
  List<String> qutu = ['Cao', 'Overpack', 'Acc Packed In One',];
  List<String> secilmishQutu= [];
  return Column(
    children: <Widget>[
      Container(
        height: 40,
        decoration: kLightBlueBoxDecorationStyle,
        child: DropDownMultiSelect(
          icon: Icon(
            Icons.arrow_drop_down,
            color: Color(0xFF3A93F5),
          ),
          decoration: InputDecoration(border: InputBorder.none),
          options: qutu,
          selectedValues: secilmishQutu,
          onChanged: (value) {
            print('secilimis qutu $value');
            setState(() {
              secilmishQutu = value;
            });
            print('you have selected $secilmishQutu qutu.');
          },
          whenEmpty: 'Select ',
        ),
      ),

    ],
  );
}

/*Widget _buildDryCheclistPage(BuildContext context) {
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
          *//*   side: BorderSide(color: Color(0xFF398AE5), width: 2,),*//*
          *//* shape: CircleBorder(),*//*
          *//* minimumSize: Size.square(80),*//*
          *//* minimumSize: Size.fromRadius(1),*//*
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
}*/

Widget _buildDialog(BuildContext context) {
  return TextButton(
    onPressed: () => showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Information',textAlign: TextAlign.center,style: TextStyle(color: Colors.red),),
        /*content: const Text(''),*/
        actions: <Widget>[

          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Column(
                children: [
                  Column(children: [
                    TextFormField(
                      decoration: const InputDecoration(

                     /*   icon: Icon(Icons.person),*/
                       /* hintText: 'Class',*/
                        labelText: 'Class ',
                      ),
                      onSaved: (String? value) {
                      },
                   /*   validator: (String? value) {
                        return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                      },*/
                    ),
                    TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Division',
                    ),
                    onSaved: (String? value) {},
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Sub Class',
                      ),
                      onSaved: (String? value) {},
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Sub Division',
                      ),
                      onSaved: (String? value) {},
                    ),
                  ],),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(60, 10, 0, 0),
            child:Row(children: [
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                ),

                onPressed: () => Navigator.pop(context, 'Close'),
                child: const Text('Close',style: TextStyle(color: Colors.white),),
              ),
              SizedBox(width: 20,),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () => Navigator.pop(context, 'Save'),
                child: const Text('Save',style: TextStyle(color: Colors.white),),

              ),
            ],),

          ),
        ],
      ),
    ),
    child: Image(image: AssetImage("assets/images/add-ico.png"),height: 38,),
  );
}

