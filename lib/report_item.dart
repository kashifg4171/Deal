
import 'package:deal/report_item_add.dart';
import 'package:flutter/material.dart';

class ReportItem extends StatefulWidget {
  @override
  _ReportItemState createState() => _ReportItemState();
}

class _ReportItemState extends State<ReportItem> {
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
              Text('\t\tWhy do you want to report this item?', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w600),),

              Container(
                margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38, width: 2,),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Column(children: <Widget>[
                  Container(
                    height: 30,
                    alignment: Alignment.centerLeft,
                    child: FlatButton(child: Text('It\'s Prohibited on Deals', style: TextStyle(fontWeight: FontWeight.w600),), onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ReportItemAdd()));
                    },),),
                  Divider(color: Colors.black45, ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 30,
                    child: FlatButton(child: Text('It\'s offensive to me', style: TextStyle(fontWeight: FontWeight.w600),), onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ReportItemAdd()));
                    },),),
                  Divider(color: Colors.black45, ),
                  Container(
                    height: 30,
                    alignment: Alignment.centerLeft,
                    child: FlatButton(child: Text('It\'s not real post', style: TextStyle(fontWeight: FontWeight.w600),), onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ReportItemAdd()));
                    },),),
                  Divider(color: Colors.black45, ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 30,
                    child: FlatButton(child: Text('It\'s duplicate post', style: TextStyle(fontWeight: FontWeight.w600),), onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ReportItemAdd()));
                    },),),
                  Divider(color: Colors.black45, ),
                  Container(
                    height: 30,
                    alignment: Alignment.centerLeft,
                    child: FlatButton(child: Text('It\'s in the wrong category', style: TextStyle(fontWeight: FontWeight.w600),), onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ReportItemAdd()));
                    },),),
                  Divider(color: Colors.black45, ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 30,
                    child: FlatButton(child: Text('It may be scam', style: TextStyle(fontWeight: FontWeight.w600),), onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ReportItemAdd()));
                    },),),
                  Divider(color: Colors.black45, ),
                  Container(
                    height: 30,
                    alignment: Alignment.centerLeft,
                    child: FlatButton(child: Text('It may be stolen', style: TextStyle(fontWeight: FontWeight.w600),), onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ReportItemAdd()));
                    },),),
                  Divider(color: Colors.black45, ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 30,
                    child: FlatButton(child: Text('Others', style: TextStyle(fontWeight: FontWeight.w600),), onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ReportItemAdd()));
                    },),),
                  Divider(color: Colors.black45, ),
                ],),
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
  Widget reasons(){
    return ListView(children: <Widget>[
      ListTile(title: Text('It\'s prohibited on Deals'),)
    ],);
  }
}