
import 'package:flutter/material.dart';

import 'Dashboard.dart';
import 'SignIn.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        
        padding: EdgeInsets.fromLTRB(0,40,0,0),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Image(
              width: 40,
              height: 40,
              image: AssetImage('assets/icons/icon_logo.png'),
            ),
          ),
          SizedBox(height: 20,),
          Container( padding: EdgeInsets.fromLTRB(20, 0, 20, 0), child: Text('Welcome', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)),
          SizedBox(height: 10,),
          Container(padding: EdgeInsets.fromLTRB(20, 0, 20, 0), child: Text('Please Sign Up', style: TextStyle(fontWeight: FontWeight.w500),)),
          // Container(padding: EdgeInsets.fromLTRB(20, 0, 20, 0), child: Row(children: <Widget>[Text('to', style: TextStyle(fontWeight: FontWeight.w500, fontFamily: 'Gilroy'),), Text(' Deal', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.green),), ],)),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.fromLTRB(20,0,0,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              Container(
                width: 115,
                child: Row(children: <Widget>[
                    InkWell( 
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                      },
                      child: Text('Sign in',  style: TextStyle(color: Colors.black45),)),
              Text('  /  '),
              Text('Sign Up', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
              ],),),
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Dashboard()));
                },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    width: 70,
                  child: Row(children: <Widget>[
                    Text('SKIP', style: TextStyle(color: Colors.green, fontSize: 12, fontWeight: FontWeight.w600),),
                    Icon(Icons.arrow_forward, color: Colors.green,)
                  ],),
                ),
              ),

            ],),
          ),

          TextField(
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 14),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(35, 20 , 0, 20),
              labelText: 'Username',
              labelStyle: TextStyle(color: Colors.black45, fontSize: 15)
            ),
          ),
          TextField(
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 14),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(35, 20 , 0, 20),
              labelText: 'Email',
              labelStyle: TextStyle(color: Colors.black45, fontSize: 15)
            ),
          ),
          TextField(
            obscureText: true,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 14),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(35, 20 , 0, 20),
              labelText: 'Password',
              labelStyle: TextStyle(color: Colors.black45, fontSize: 15)
            ),
          ),
          TextField(
            obscureText: true,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 14),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(35, 20 , 0, 20),
              labelText: 'Confirm Password',
              labelStyle: TextStyle(color: Colors.black45, fontSize: 15)
            ),
          ),
          
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            width: MediaQuery.of(context).size.width,
            height: 60,
            child: RaisedButton(
              color: Colors.green,
              child: Text('SIGN IN', style: TextStyle(color: Colors.white),), onPressed: (){},
              ),
          ),
        ]
        )
        )
    );
  }
}