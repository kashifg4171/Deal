import 'package:deal/About_deal.dart';
import 'package:deal/Terms_and_services.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('About'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              height: 35,
              child: FlatButton.icon(
                icon: Image(
                  height: 20,
                  width: 20,
                  image: AssetImage('assets/icons/ic_about.png'),
                ),
                label: Text('\t\t About Deal'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutDeal()));
                },
              ),
            ),
            Divider(
              color: Colors.black38,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              height: 35,
              child: FlatButton.icon(
                icon: Image(
                  height: 20,
                  width: 20,
                  image: AssetImage('assets/icons/ic_terms_services.png'),
                ),
                label: Text('\t\t Terms of Servies'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TermsAndConditions()));
                },
              ),
            ),
            Divider(
              color: Colors.black38,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              height: 35,
              child: FlatButton.icon(
                icon: Icon(
                  Icons.security,
                  size: 26,
                ),
                label: Text('\t\t Privacy Policy'),
                onPressed: () {
                  
                },
              ),
            ),
            Divider(
              color: Colors.black38,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              height: 35,
              child: FlatButton.icon(
                icon: Image(
                  height: 20,
                  width: 20,
                  image: AssetImage('assets/icons/ic_feedback.png'),
                ),
                label: Text('\t\t Feedback'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
