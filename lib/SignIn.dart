import 'package:deal/Forget_Password.dart';
import 'package:deal/singup.dart';
import 'package:flutter/material.dart';

import 'Dashboard.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
          Container( padding: EdgeInsets.fromLTRB(20, 0, 20, 0), child: Text('Welcome Back', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)),
          SizedBox(height: 10,),
          Container(padding: EdgeInsets.fromLTRB(20, 0, 20, 0), child: Text('Sign in to continue', style: TextStyle(fontWeight: FontWeight.w500),)),
          Container(padding: EdgeInsets.fromLTRB(20, 0, 20, 0), child: Row(children: <Widget>[Text('to', style: TextStyle(fontWeight: FontWeight.w500, fontFamily: 'Gilroy'),), Text(' Deal', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.green),), ],)),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.fromLTRB(20,0,20,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              Container(
                width: 115,
                child: Row(children: <Widget>[
                    Text('Sign in', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
              Text('  /  '),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                },
                child: Text('Sign Up', style: TextStyle(color: Colors.black45),),),
              ],),),
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Dashboard()));
                },
                  child: Container(width: 50,
                  child: Row(children: <Widget>[
                    Text('SKIP', style: TextStyle(color: Colors.green, fontSize: 12, fontWeight: FontWeight.w600),),
                    Icon(Icons.arrow_forward, color: Colors.green,)
                  ],),
                ),
              )
            ],),
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
          SizedBox(height: 5,),
          
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 20, 10),
            child: Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassWord()));
                },
                child: Text('Forgot Password?', style: TextStyle(color: Colors.black45, fontSize: 13, fontWeight: FontWeight.w500),),
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            width: MediaQuery.of(context).size.width,
            height: 70,
            child: RaisedButton(
              color: Colors.green,
              child: Text('SIGN IN', style: TextStyle(color: Colors.white),), onPressed: (){},
              ),
          ),

          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            width: MediaQuery.of(context).size.width,
            height: 70,
            child: RaisedButton.icon(
              color: Colors.blue,
              icon: Image(
                height: 20,
                width: 20,
                image: AssetImage('assets/icons/facebook.png'),
                ),
              label: Text('Facebook Login', style: TextStyle(color: Colors.white),), onPressed: (){},
              ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            height: 40,
            child: Column(children: <Widget>[
              Center(child: Text('By using this you agree to', textAlign: TextAlign.center, style: TextStyle(fontSize: 11,color: Colors.black54, fontWeight: FontWeight.w500) ,)),
              Center(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                InkWell(
                  child: Text('Terms of Services', style: TextStyle(color: Colors.green, fontSize: 11, fontWeight: FontWeight.w500, decorationStyle: TextDecorationStyle.solid, decoration: TextDecoration.underline),),
                  onTap: (){

                  },
                  ),
                Text(' and ', textAlign: TextAlign.center, style: TextStyle(fontSize: 11,color: Colors.black54) ,),
                InkWell(
                   child: Text('privacy policy', style: TextStyle(color: Colors.green, fontSize: 11, fontWeight: FontWeight.w500, decorationStyle: TextDecorationStyle.solid, decoration: TextDecoration.underline),),
                  onTap: (){
                    
                  },
                )
                ],),)
            ],),
          )
        ]
        )
        )
    );
  }
}