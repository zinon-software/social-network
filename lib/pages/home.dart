import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isAuth = false;

  Widget buildAuthScreen() {
    return Text('Authenticated');
  }

  Scaffold buildUnAuthScreen() {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Theme.of(context).accentColor.withOpacity(0.8),
            Theme.of(context).primaryColorLight,
          ]
          ),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Flutter Seare',
              style: TextStyle(
                fontFamily: 'Signatra',
                fontSize: 90.0,
                color: Colors.white,
              ),
            ),
            GestureDetector(
              onTap: () => print('tapped'),
              child: Container(
                width: 250.0,
                height: 60.0,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/google_signin_button.png'),
                  fit: BoxFit.cover,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return isAuth ? buildAuthScreen() : buildUnAuthScreen();
  }
}
