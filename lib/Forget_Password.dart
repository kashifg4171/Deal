
import 'package:flutter/material.dart';

class ForgetPassWord extends StatefulWidget {
  @override
  _ForgetPassWordState createState() => _ForgetPassWordState();
}

class _ForgetPassWordState extends State<ForgetPassWord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
    backgroundColor: Colors.white,
    body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(10, 30, 10 , 20),
            child: Center(
              child: Image(
                height: 45,
                //width: MediaQuery.of(context).size.width-100,
                image: AssetImage('assets/icons/icon_login_logo.png'),),
            ),
          )  
         , Container(padding: EdgeInsets.fromLTRB(30, 10, 30, 20),
          child: Center(child: Text('Please enter you email address and we will send you forgot password link!!!', textAlign: TextAlign.center, style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),),
          ),
          SizedBox(height: 20,),
          TextField(
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 14),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(35, 5 , 0, 15),
              labelText: 'Email'
              
            ),
          ),
          SizedBox(height: 10,),
          FlatButton(
            color: Colors.green,
            padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(27))),
            onPressed: (){},
            child: Text('Send', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
          ),
      ],),
    ),
    );
  }
}