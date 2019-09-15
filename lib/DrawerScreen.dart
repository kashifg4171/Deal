
import 'package:deal/about.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_profile.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    
      return 
      ClipPath(
        clipper: ClippingClass(),
        child: Drawer(
              //scrollDirection: Axis.horizontal,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    
                    ClipPath(
                      child: Container(
                        alignment: Alignment.topLeft,
                        width: MediaQuery.of(context).size.height,
                        color: Colors.green,
                        child: DrawerHeader(
                          child: Container(
                              alignment: Alignment.center,
                              child: Row(
                                children: <Widget>[
                                    Container(
                                        width: MediaQuery.of(context).size.width /3.6,
                                        height: MediaQuery.of(context).size.width /3.6,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(100)),
                                          child: Container(
                                          child: Image(image: AssetImage('assets/profile.jpg'),)
                                        )),
                                    ),
                                  SizedBox(width: 5,),
                                    Text(
                                      'Anas Abdullah',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                ],
                              )),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    FlatButton.icon(
                      icon: Image(
                        height: 25,
                        width: 25,
                        image: AssetImage('assets/icons/icon_profile.png'),),
                      label: Text('\t\t User Profile'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyProfile()));
                      },
                    ),
                    FlatButton.icon(
                      icon: Image(
                        height: 25,
                        width: 25,
                        image: AssetImage('assets/icons/icon_home.png'), color: Colors.green,),
                      label: Text('\t\t Browse'),
                      onPressed: () {},
                    ),
                    FlatButton.icon(
                      icon: Image(
                        height: 25,
                        width: 25,
                        image: AssetImage('assets/icons/icon_post.png'),),
                      label: Text('\t\t Post'),
                      onPressed: () {},
                    ),
                    FlatButton.icon(
                      icon: Image(
                        height: 25,
                        width: 25,
                        image: AssetImage('assets/icons/icon_chat.png'),),
                      label: Text('\t\t Chat'),
                      onPressed: () {},
                    ),
                    
                    FlatButton.icon(
                      icon: Image(
                        height: 25,
                        width: 25,
                        image: AssetImage('assets/icons/icon_categories.png'),),
                      label: Text('\t\t Categories'),
                      onPressed: () {},
                    ),
                    
                    FlatButton.icon(
                      icon: Image(
                        height: 25,
                        width: 25,
                        image: AssetImage('assets/icons/ic_about.png'),),
                      label: Text('\t\t About'),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));
                      },
                    ),
                    
                    FlatButton.icon(
                      icon: Image(
                        height: 25,
                        width: 25,
                        image: AssetImage('assets/icons/ic_login.png'),),
                      label: Text('\t\t Log Out'),
                      onPressed: () {},
                    ),
                    
                  ],
                ),
              ),
    ),
      );
  }
}


class ClippingClass extends CustomClipper<Path> {
  @override
   Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width-50, size.height);
    path.lineTo(size.width-50, 0);
    
    path.close();

    return path;
   }


  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}