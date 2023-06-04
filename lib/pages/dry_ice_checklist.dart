import 'package:flutter/material.dart';
import '../const_design/design.dart';
import 'package:dgrprojects/pages/modal.dart';
import 'package:dgrprojects/pages/information.dart';
import 'package:dgrprojects/main.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DryIceChecklist extends StatefulWidget {
  @override
  _DryIceChecklistState createState() => _DryIceChecklistState();
}
class _DryIceChecklistState extends State<DryIceChecklist> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:  AppBar(
            backgroundColor: Color(0xFF398AE5),
            centerTitle: false,
            title: Text('Dgr'),
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  ModalView()),
                );
              },
              icon: Icon(Icons.arrow_back),
            ),
          actions: [
            _buildDialog(context),
            //list if widget in appbar actions
            PopupMenuButton(
              icon: Icon(Icons.menu),  //don't specify icon if you want 3 dot menu
              color: Colors.white,
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Row(
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        width: 5
                        ,
                      ),
                      Text("Home",style: TextStyle(color: Colors.blue),)
                    ],
                  ),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Row(
                children: [
                Icon(
                Icons.settings,
                  color: Colors.blue,
                ),
                const SizedBox(
                  width: 7,
                ),
                Text("Settings",style: TextStyle(color: Colors.blue),)
              ],
            ),
                ),
                PopupMenuItem<int>(
                    value: 2,
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout,
                          color: Colors.blue,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text("Logout",style: TextStyle(color: Colors.blue),)
                      ],
                    )),
              ],
              onSelected: (item) => {print(item),
              Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => MyApp()),
              (route) => false),
              },
            ),
          ],
          ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 10.0),
                      _buildClassDivision(),
                      SizedBox(height: 15.0),
                      _buildAirwaybilNo(),
                      SizedBox( height: 15.0,),
                      Row(
                        children: [
                          Flexible(
                            child: Container(
                              child:_buildOrign(),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Flexible(
                            child: Container(
                              child:_buildCao(),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Flexible(
                            child: Container(
                              child:_buildDest(),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Flexible(
                            child: Container(
                              child:_buildGroup(),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                     _buildInfo(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*Navigator.push(
context,
MaterialPageRoute(builder: (context) =>  ModalView()),
);*/




Widget _buildClassDivision() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
       
/*  decoration: kLightBlueBoxDecorationStyle,*/

        height: 30.0,
        child: TextFormField(
          readOnly: true,
          showCursor: true,
          enabled: true,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 565.0, horizontal: 10.0),
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(5.0),
              borderSide: new BorderSide(),


            ),
            labelText: "Class/Division",
           /* hintText: 'Class/Division' ,*/
            hintStyle: TextStyle(fontSize: 80.0, color: Colors.redAccent),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 1.0,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
Widget _buildAirwaybilNo() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
 /*   decoration: kLightBlueBoxDecorationStyle,*/

        height: 30.0,

        child: TextFormField(
          decoration: InputDecoration(
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(5.0),
              borderSide: new BorderSide(),

            ),
            labelText: "Air Waybil No",
            /*hintText: 'Air Waybil No',*/
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 1.0,
              ),
            ),
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
   /* decoration: kLightBlueBoxDecorationStyle,*/
        height: 30.0,
        child: TextFormField(
          decoration: InputDecoration(
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(5.0),
              borderSide: new BorderSide(),

            ),
            labelText: "Origin",
           /* hintText: 'Org 1',*/
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 1.0,
              ),
            ),
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
   /* decoration: kLightBlueBoxDecorationStyle,*/

        height: 30.0,
        child: TextFormField(
          decoration: InputDecoration(
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(5.0),
              borderSide: new BorderSide(),

            ),
            labelText: "Dest",
           /* hintText: 'Dest',*/
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 1.0,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
Widget _buildCao() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
      /* decoration: kLightBlueBoxDecorationStyle,*/

        height: 30.0,
        child: TextFormField(
          decoration: InputDecoration(
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(5.0),
              borderSide: new BorderSide(),

            ),
            labelText: "Cao",
           /* hintText: 'Cao',*/
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 1.0,
              ),
            ),
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
      /* decoration: kLightBlueBoxDecorationStyle,*/

        height: 30.0,
        child: TextFormField(
          decoration: InputDecoration(
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(5.0),
              borderSide: new BorderSide(),

            ),
            labelText: "Group",
            hintText: 'Group',
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 1.0,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}




Widget  _buildInfo(context){
  double height=MediaQuery.of(context).size.height;

  double _currentSliderValue = 20;
  double _currentSliderPrimaryValue = 0.2;

  double _currentSliderSecondaryValue = 0.5;

  var details;
  return Column(


  children: [
      Container(

     height: 480,
        padding: EdgeInsets.fromLTRB(10, 20, 5, 10),

      alignment: Alignment.centerLeft,
      decoration: kLightYellowBoxDecorationStyle,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 400,
          /*  color: Colors.grey,*/
            child: Column(
              children: <Widget>[
                Text('Quantity and Type of Packing' ,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 24,

                  ),
                ),

                CarouselSLider(),
                TextButton(
                    style: TextButton.styleFrom( textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),backgroundColor: Colors.blue,padding: EdgeInsets.fromLTRB(10, 0, 10, 2)),
                    child: Text('10.01.05',style: TextStyle(color: Colors.white),),
                    onPressed: () {
                    /*  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  InfoPage()),
                      );*/

                      Navigator.of(context).push(_createRoute());
                    }),

              ],

            ),
          ),
          SliderMain(),


        ],
      ),
    )],

  );
}
/*Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>  InfoPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}*/
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>  InfoPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

void setState(Null Function() param0) {
}

Widget _buildDialog(BuildContext context) {
  return TextButton(
    onPressed: () => showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Information',textAlign: TextAlign.center,style: TextStyle(color: Colors.red),),
        content: const Text('If any box is checked no do not accept the shipment and give a duplicate copy of this completed form to the shipper.\n Never accept or refuse a shpment before all items have been checked',textAlign: TextAlign.center,style: TextStyle(color: Colors.grey),),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(70, 0, 0, 0),
            child:Row(children: [

              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                ),

                onPressed: () => Navigator.pop(context, 'Close'),
                child: const Text('Close',style: TextStyle(color: Colors.white),),
              ),
              SizedBox(width: 10,),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK',style: TextStyle(color: Colors.white),),

              ),
            ],),

          ),
        ],
      ),
    ),
    child: Icon(Icons.info_outline_rounded,color: Colors.white,),
  );
}





class SliderMain extends StatefulWidget {
  @override
  State<SliderMain> createState() => _SliderMainState();
}

class _SliderMainState extends State<SliderMain> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Slider(
          value: _currentSliderValue,
          min: 0,
          max: 200,
          divisions: 5,
          label: _currentSliderValue.round().toString(),
          onChanged: (double value) {
            setState(() {
              _currentSliderValue = value;
            });
          },
        ),
      ],
    );
  }
}

/*
                  child: Text('Two copies in English and in the IATA format including the air certification statement. This question maybe indicated as not applicable only way the Shipper’s Declaration Data is submitted electronically.' ,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),),
                ),*/

class CarouselSLider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> list = [
      '1 copies in English and in the IATA format including the air certification statement. This question maybe indicated as not applicable only way the Shipper’s Declaration ',
      '2 copies in English and in the IATA format including the air certification statement. This question maybe indicated as not applicable only way the Shipper’s Declaration ',
      '3 copies in English and in the IATA format including the air certification statement. This question maybe indicated as not applicable only way the Shipper’s Declaration ',

    ];
    return Container(
         height: 280,
          child: CarouselSlider(
            options: CarouselOptions(),
            items: list
                .map((item) => Container(
                width: 500,
      /*        margin: EdgeInsets.fromLTRB(20, 10, 20, 0),*/
              child: Text(item.toString(),
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),),
              color: Colors.white,
            ))
                .toList(),
          ),
    );
  }
}
