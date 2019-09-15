
import 'package:flutter/material.dart';

class AboutDeal extends StatefulWidget {
  @override
  _AboutDealState createState() => _AboutDealState();
}

class _AboutDealState extends State<AboutDeal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.green), onPressed: (){
          Navigator.pop(context);},),
        title: Center(child: Text('About Deal', textAlign: TextAlign.center, style: TextStyle(color: Colors.black45),)),
        elevation: 1,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('ABOUT DEALS', textAlign: TextAlign.left, style: TextStyle(color: Colors.red, fontSize: 22, fontWeight: FontWeight.w600),),
            SizedBox(height: 20,),
            Text('DEAL\'s marketplace includes goods, services offers. When you start browsing, the app displays an assortment of new goods and services for sale within the area around you of your current location . Buy and sell goods easily within the app . Best goods for sale as easy as taking a photo.\n\nDEAL is a mobile marketplace for local buyers and sellers. Great Deals.\nBuy or Sell anything; easily post your item for sale by taking a photo.\nGreat deals on clothes, furniture, cell phones, electronics, baby and kids items, cars, jewelry, and much more.\nSee who you’re dealing and see users rating.\nBrowse local items for sale through Deal every day thousands of new good post on Deal.\nMessage buyers and sellers from within the app.\nBrowse items by image and sort by category or location.\nJoin people using DEAL in more than 20 countries.',
            style: TextStyle(fontSize: 13,color: Colors.black87, fontWeight: FontWeight.w400),),
           
                      SizedBox(height: 20,),
        
          ]),
      )
      
    );
  }
}