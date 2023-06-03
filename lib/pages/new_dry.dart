/*
import 'package:flutter/material.dart';
import '../const_design/design.dart';
import 'package:dgrprojects/pages/modal.dart';
import 'package:dgrprojects/pages/information.dart';
import 'package:dgrprojects/main.dart';
class DryChecklist extends StatefulWidget {
  static String basliq = 'Checklist';

  @override
  State<DryChecklist> createState() => _DryChecklistState();
}

class _DryChecklistState extends State<DryChecklist> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: DryChecklist.basliq,
      theme: ThemeData(
         */
/* backgroundColor: Colors.blue[300], //appbar rengle
          scaffoldBackgroundColor: Colors.blue[300] //body rengle*//*

      ),
      home: Scaffold(
        appBar:  AppBar(
          backgroundColor: Color(0xFF398AE5),
          centerTitle: false,
          title: Text(DryChecklist.basliq),
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
            ),// common column
          ),
        ),
      ),
    );
  }
}

*/
/*top input*//*

Widget _buildClassDivision() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        */
/*  decoration: kLightBlueBoxDecorationStyle,*//*

        height: 45.0,
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
            hintText: 'Class/Division' ,
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
        */
/*  decoration: kLightBlueBoxDecorationStyle,*//*

        height: 45.0,
        child: TextFormField(
          decoration: InputDecoration(
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(5.0),
              borderSide: new BorderSide(),

            ),
            labelText: "Air Waybil No",
            hintText: 'Air Waybil No',
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
        */
/*  decoration: kLightBlueBoxDecorationStyle,*//*

        height: 45.0,
        child: TextFormField(
          decoration: InputDecoration(
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(5.0),
              borderSide: new BorderSide(),

            ),
            labelText: "Origin",
            hintText: 'Org 1',
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
        */
/*  decoration: kLightBlueBoxDecorationStyle,*//*

        height: 45.0,
        child: TextFormField(
          decoration: InputDecoration(
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(5.0),
              borderSide: new BorderSide(),

            ),
            labelText: "Dest",
            hintText: 'Dest',
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
        */
/*  decoration: kLightBlueBoxDecorationStyle,*//*

        height: 45.0,
        child: TextFormField(
          decoration: InputDecoration(
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(5.0),
              borderSide: new BorderSide(),

            ),
            labelText: "Cao",
            hintText: 'Cao',
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
        */
/*  decoration: kLightBlueBoxDecorationStyle,*//*

        height: 45.0,
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
             */
/* Text(
                'Komputerin donmasi problemi var?',
                style: TextStyle(
                  color: Colors.red[500],
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),*//*

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

      ],
    );
  }
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




Widget  _buildInfo(context){
  */
/* double _currentSliderValue = 20;
  double _currentSliderPrimaryValue = 0.2;*//*

  double _currentSliderSecondaryValue = 0.5;

  var details;
  return Container(
    padding: EdgeInsets.fromLTRB(0, 20, 0, 15),
    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
    alignment: Alignment.centerLeft,
    decoration: kLightYellowBoxDecorationStyle,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        PageViewExample(),

        SliderMain(),
      ],
    ),
  );
}


*/
/*
class CarouselSlider extends StatefulWidget {
  const CarouselSlider({Key? key}) : super(key: key);

  @override
  State<CarouselSlider> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarouselSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(height: 400.0),
        items: [1,2,3,4,5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      color: Colors.amber
                  ),
                  child: Text('text $i', style: TextStyle(fontSize: 16.0),)
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
*//*



class PageViewExample extends StatelessWidget {
  const PageViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Container(
      child: PageView(
        /// [PageView.scrollDirection] defaults to [Axis.horizontal].
        /// Use [Axis.vertical] to scroll vertically.
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          Center(
            child: Text('Second Page'),
          ),
          Center(
            child: Text('Second Page'),
          ),
          Center(
            child: Text('Third Page'),
          ),
        ],
      ),
    );
  }
}
*/
/*  child:  Container(

            child: Column(
              children: <Widget>[
                Container(
                  child:
                  Text('Quantity and Type of Packing' ,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 24,
                    ),
                  ),),
                Container(child: Text('Two copies in English and in the IATA format including the air certification statement. This question maybe indicated as not applicable only way the Shipper’s Declaration Data is submitted electronically.' ,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),),),
                Container(child: TextButton(
                    style: TextButton.styleFrom( textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),backgroundColor: Colors.blue,padding: EdgeInsets.fromLTRB(10, 2, 10, 2)),
                    child: Text('10.01.05',style: TextStyle(color: Colors.white),),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  InfoPage()),
                      );
                    }),),


              ],

            ),
          ),*//*

*/
/*
Widget _buildCarousel() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        *//*

*/
/*  decoration: kLightBlueBoxDecorationStyle,*//*
*/
/*

        height: 45.0,
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
}*/

