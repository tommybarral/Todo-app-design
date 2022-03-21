import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {

  static const routeName = '/welcome-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF69c5df),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('http://auberge-arenthon.fr/wp-content/uploads/revslider/404-Error-Space-Theme/space-bg.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Pick your favorite \nContest', style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600, color: Colors.white),),
              SizedBox(height: 50),
              Text('We make great design work, happen with our great community designer', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),),
              SizedBox(height: 40),
              Row(
                children: [
                  SizedBox(
                    width: 220,
                  ),
                  Container(
                    height: 60,
                    width: 160,
                    child: RaisedButton(
                      onPressed: () {},
                      elevation: 0,
                      color: Colors.orangeAccent,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      child: Text('Get started', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
