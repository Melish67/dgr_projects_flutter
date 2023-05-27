import 'package:dgrprojects/pages/dry_ice_checklist.dart';
import 'package:dgrprojects/main.dart';
import "package:flutter/material.dart";

void main() => runApp(Information());

class Information extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InfoPage(),
    );
  }
}

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:  AppBar(
          backgroundColor: Color(0xFF398AE5),
          centerTitle: false,
          title: Text('Information'),
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  DryIceChecklist()),
              );
            },
            icon: Icon(Icons.arrow_back),
          ),

          /*  actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.info),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
              ),
            ],*/
          actions: [

            //list if widget in appbar actions
            PopupMenuButton(
              icon: Icon(Icons.menu),  //don't specify icon if you want 3 dot menu
              color: Colors.white,
              itemBuilder: (context) => [
                /*   PopupMenuItem<int>(
                  value: 0,
                  child: Text("Home",style: TextStyle(color: Colors.blue),),
                ),*/
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
        /*appBar:  AppBar(
          backgroundColor: Color(0xFF398AE5),
          centerTitle: false,
          title: Text('Dgr'),
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  DryIceChecklist()),
              );
            },
            icon: Icon(Icons.arrow_back),
          ),

          *//*  actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.info),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
              ),
            ],*//*

        ),*/
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF73AEF5),
                    Color(0xFF61A4F1),
                    Color(0xFF478DE0),
                    Color(0xFF398AE5),
                  ],
                  stops: [0.1, 0.4, 0.7, 0.9],
                ),
              ),

              child: Column(

                children: [

                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
                        height: MediaQuery.of(context).size.height/3.3,
                        margin: const EdgeInsets.only(
                            bottom: 6.0), //Same as `blurRadius` i guess
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Text("10.01.05",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20),),
                            SizedBox(height: 15,),
                            Text("Two copies in English and in the IATA format including the air certification statement. This question maybe indicated as not applicable only way the Shipper’s Declaration Data is submitted electronically.",style: TextStyle(color: Colors.grey,fontSize: 16),textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
                        height: MediaQuery.of(context).size.height/3.1,
                        margin: const EdgeInsets.only(
                            bottom: 6.0), //Same as `blurRadius` i guess
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Text("10.01.05",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20),),
                            SizedBox(height: 15,),
                            Text("Two copies in English and in the IATA format including the air certification statement. This question maybe indicated as not applicable only way the Shipper’s Declaration Data is submitted electronically.",style: TextStyle(color: Colors.grey,fontSize: 16),textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
                        height: MediaQuery.of(context).size.height/3.1,
                        margin: const EdgeInsets.only(
                            bottom: 6.0), //Same as `blurRadius` i guess
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Text("10.01.05",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20),),
                            SizedBox(height: 15,),
                            Text("Two copies in English and in the IATA format including the air certification statement. This question maybe indicated as not applicable only way the Shipper’s Declaration Data is submitted electronically.",style: TextStyle(color: Colors.grey,fontSize: 16),textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
                        height: MediaQuery.of(context).size.height/3.1,
                        margin: const EdgeInsets.only(
                            bottom: 6.0), //Same as `blurRadius` i guess
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Text("10.01.05",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20),),
                            SizedBox(height: 15,),
                            Text("Two copies in English and in the IATA format including the air certification statement. This question maybe indicated as not applicable only way the Shipper’s Declaration Data is submitted electronically.",style: TextStyle(color: Colors.grey,fontSize: 16),textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
                        height: MediaQuery.of(context).size.height/3.1,
                        margin: const EdgeInsets.only(
                            bottom: 6.0), //Same as `blurRadius` i guess
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Text("10.01.05",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20),),
                            SizedBox(height: 15,),
                            Text("Two copies in English and in the IATA format including the air certification statement. This question maybe indicated as not applicable only way the Shipper’s Declaration Data is submitted electronically.",style: TextStyle(color: Colors.grey,fontSize: 16),textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
                        height: MediaQuery.of(context).size.height/3.1,
                        margin: const EdgeInsets.only(
                            bottom: 6.0), //Same as `blurRadius` i guess
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Text("10.01.05",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20),),
                            SizedBox(height: 15,),
                            Text("Two copies in English and in the IATA format including the air certification statement. This question maybe indicated as not applicable only way the Shipper’s Declaration Data is submitted electronically.",style: TextStyle(color: Colors.grey,fontSize: 16),textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
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
