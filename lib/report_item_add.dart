
import 'package:flutter/material.dart';

class ReportItemAdd extends StatefulWidget {
  @override
  _ReportItemAddState createState() => _ReportItemAddState();
}

class _ReportItemAddState extends State<ReportItemAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        //leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.white,),),
        title: Text('Report Item', style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              //padding: EdgeInsets.fromLTRB(left, top, right, bottom),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              Container(height: 120, color: Colors.green, ),
              SizedBox(height: 80,),
              Center(child: Text('Crimson X Republic Shikargan', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),)),
              SizedBox(height: 10,),
              Center(child: Text('Saad Mazhar', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),)),
              SizedBox(height: 20,),
              Text('\t\tAdditional Note (Optional)', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),),
              Container(
                padding: EdgeInsets.fromLTRB(10,20,10,10),
                child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 8,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                    hintText: 'Please enter your note here',
                    hintStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(height: 45,
              color: Colors.green,
              width: MediaQuery.of(context).size.width,
              child: Center(child: Text('DONE', style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white),)),
              )
            ],),),

            Positioned(
              top: 70,
              left: (MediaQuery.of(context).size.width/2)-65,
              child: Container(
                    width: 110,
                      height: 110,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/profile.jpg'),),
                         shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.white, width: 2.0)),
                  ),
            )
        ],),
      ),
    );
  }
}