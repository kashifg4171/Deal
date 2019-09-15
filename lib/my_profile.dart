
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import 'Dashboard.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  bool isSale=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /************************************Body ************** */
      body: SingleChildScrollView(
        child: Stack(
          //alignment: Alignment.topCenter,
          children: <Widget>[
          Card(
            elevation: 5,
            borderOnForeground: true,
            margin: EdgeInsets.all(0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(10, 25, 10, 20),
                  height: 170,
                  color: Colors.green,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    IconButton(icon: Icon(Icons.arrow_back, color: Colors.white,), onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
                    },),
                    IconButton(icon: Icon(Icons.edit, color: Colors.white,), onPressed: (){},),
                  ],),
                ),
                SizedBox(height: 10,),
                Container(padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/2.3, 0,5,0 ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    Text('Joined on May2019', style: TextStyle(color: Colors.black45, fontSize: 11),),
                    Text('5 Items Sold', style: TextStyle(color: Colors.black45, fontSize: 11),),
                  ],),
                ),
                SizedBox(height: 40,),
                Container(
                  padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
              Center(child: Badge(
                position: BadgePosition.topRight(top: 3, right: -13),
                child: Text('Sales   ', style: TextStyle(fontWeight: FontWeight.w600),
              )
              )),
              Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Badge(
                    position: BadgePosition.topRight(top: 3, right: -13),
                    child: Text('Saved   ', style: TextStyle(fontWeight: FontWeight.w600),
                  )),
                  SizedBox(height: 3,),
                  Container(height: 3, width: 60, color: Colors.green),
                ],
              ))
            ],),
                ),
                Divider(),
              ],
            ),
          ),

          Container(height: 50,),
          Positioned(
            top: 5,
            left: 15,
           child: userProfile(),
          )
        ]),
      ),
    );
  }

  Widget userProfile(){
    return Container(
              padding: EdgeInsets.fromLTRB(0, 90, 0, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 2.9,
                      height: MediaQuery.of(context).size.width / 2.9,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/profile.jpg'),),
                         shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.white, width: 2.0)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    '\tSaif Khan',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(width: 50,),
                  Image(
                    height: 35,
                    width: 35,
                    color: Colors.white,
                    image: AssetImage('assets/icons/star_yello_small.png',),
                  ),
                  Text('3.5', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),
                  SizedBox(width: 10,)
                ],
              ),
            );
  }
  
  Widget soldItems(){
    return Center(
      child: Text('No Sold Item.'),
    );
  }

  Widget savedItems(){
    return Center(
      child: Text('No saved Item.'),
    );
  }

}
