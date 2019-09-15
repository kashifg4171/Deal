
import 'package:deal/SignIn.dart';
import 'package:flutter/material.dart';

class SelectLang extends StatefulWidget {
  @override
  _SelectLangState createState() => _SelectLangState();
}

class _SelectLangState extends State<SelectLang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Container(),
        title: Center(child: Text('Select Language'),),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        
        padding: EdgeInsets.fromLTRB(20,40,20,0),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image(
            width: 30,
            height: 30,
            image: AssetImage('assets/icons/icon_logo.png'),
          ),
          SizedBox(height: 20,),
          Text('Welcome There', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
          SizedBox(height: 20,),
          Text('Select your prefered', style: TextStyle(fontWeight: FontWeight.w500),),
          Row(children: <Widget>[Text('language ', style: TextStyle(fontWeight: FontWeight.w700, fontFamily: 'Gilroy'),), Text('to continue', style: TextStyle(fontWeight: FontWeight.w500),), ],),
          SizedBox(height: 50,),
          
            Divider(),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
            },
              child: Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('English', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Gilroy'),),
                  Icon(Icons.arrow_forward, size: 30, color: Colors.black,),
                ],
              ),
            ),
          ),
            Divider(),
          GestureDetector(
            onTap: (){

            },
              child: Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('عربی', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Gilroy'),),
                  Icon(Icons.arrow_forward, size: 30, color: Colors.black,),
                ],
              ),
            ),
          ),

            Divider(),
          GestureDetector(
            onTap: (){

            },
              child: Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('English', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Gilroy'),),
                  Icon(Icons.arrow_forward, size: 30, color: Colors.black,),
                ],
              ),
            ),
          ),
         Divider(),
      ],),),
    );
  }
}