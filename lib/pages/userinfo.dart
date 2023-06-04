import "package:flutter/material.dart";
void main() => runApp(UserInfo());
class UserInfo extends StatefulWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final double width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 220,
            decoration: BoxDecoration(
               borderRadius:  BorderRadius.only(bottomRight:Radius.circular(50),
               ),
               color: Color(0xff363f93),
            ),
            child: Stack(
              children: [
                Positioned(
                  top:80,
                  left: 0,
                  child: Container(
                    height: 80,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                ),//white
                Positioned(
                  top: 110,
                  left: 20,
                  child: Text("User Information",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff363f93),
                  ),
                ),
                ),//white ->  text

              ],
            ),
          ),/*1 container*/
          SizedBox(height: height*0.03,),
          Container(
            height: 230,
            child: Stack(
              children: [
                Positioned(
                  top: 35,
                  left: 20,
                  child: Material(
                  child: Container(
                    height: 180,
                    width: width*0.9,
                    decoration: BoxDecoration(

                      color: Colors.white,
                      borderRadius: BorderRadius.circular(0),
                      boxShadow: [BoxShadow(
                        color: Colors.grey.withOpacity(0.5), //color of shadow
                        spreadRadius: 5, //spread radius
                        blurRadius: 7, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                      )],
                    ),
                  ),
                ),),/*common white*/
                Positioned(
                  top: 0,
                  left: 30,
                  child: Card(
                  elevation: 10.0,
                  shadowColor: Colors.grey.withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      height: 190,
                      width: 135,
                      decoration: BoxDecoration(
                        color: Color(0xff363f93),
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          scale: 0.2,
                             fit: BoxFit.contain,
                            image: AssetImage("assets/images/woman2.png"),
                        ),
                      ),
                    ),
                ),
                ),//left image
                Positioned(
                  top: 50,
                  left: 180,
                  child: Container(
                    height: 150,
                    width: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nigar Azimzade ",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff363f93),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text("Hava Limani ",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                      ),
                     Divider(color: Colors.black,),
                      Text("077 572 64 69",
                        style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ],
                  ),
                ),
                ),//right text
              ],
            ),
          ),//2 container

          Expanded(
            child:MediaQuery.removePadding(context: context,removeTop: true,
            child: ListView(
            children: [
              Container(
                height: 150,
                padding: EdgeInsets.only(left: 20,right: 20,bottom: 20),
                margin: EdgeInsets.only(bottom: 10,top:25,left: 15,right: 15),
                decoration: BoxDecoration(
                  color:Color(0xff363f93),
                  borderRadius:  BorderRadius.only(bottomLeft:Radius.circular(50),),
                  boxShadow: [BoxShadow(
                    color: Colors.grey.withOpacity(0.5), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 2), // changes position of shadow
                  )],
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(20,50, 0, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("The Best",
                      style: TextStyle(color: Colors.white,fontSize: 12),
                      ),
                      SizedBox(height: 2,),
                      Text("Your life starts here",
                        style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 150,
                padding: EdgeInsets.only(left: 20,right: 20,bottom: 20),
                margin: EdgeInsets.only(bottom: 20,top:25,left: 15,right: 15),
                decoration: BoxDecoration(
                  color:Color(0xff363f93),
                  borderRadius:  BorderRadius.only(topRight:Radius.circular(50),),
                  boxShadow: [BoxShadow(
                    color: Colors.grey.withOpacity(0.5), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 2), // changes position of shadow
                  )],
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(20,50, 0, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("The Best",
                        style: TextStyle(color: Colors.white,fontSize: 12),
                      ),
                      SizedBox(height: 2,),
                      Text("Your life starts here",
                        style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),
                      ),
                    ],
                    
                  ),
                ),
              ),
            ],
          ),
            ),
          ),
        ],
      ),//common column
    );
  }
}
