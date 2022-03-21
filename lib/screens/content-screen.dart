import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ContentScreen extends StatefulWidget {
  //static const routeName = '/content-screen';
  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {

  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 70),
        color: Colors.lightBlueAccent.withOpacity(0.5),
        child: Column(
          children: [
            Container(
              height: 100,
              width: width,
              margin: EdgeInsets.only(left: 25, right: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFebf8fd),
              ),
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://us.123rf.com/450wm/kritchanut/kritchanut1401/kritchanut140100054/25251050-photo-de-profil-d-affaires-de-l-avatar.jpg?ver=6',
                      ),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Will Smith', style: TextStyle(color: Color(0xFF3b3f42), fontSize: 18, decoration: TextDecoration.none),
                        ),
                        SizedBox(height: 5,),
                        Text('Top level', style: TextStyle(color: Colors.grey, fontSize: 12, decoration: TextDecoration.none),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30.0, bottom: 20, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular Contest'),
                  Spacer(),
                  Text('Show all'),
                  Container(
                    height: 25,
                    width: 25,
                    color: Colors.deepOrangeAccent,
                  )
                ],
              ),
            ),
            Container(
              height: 250,
              width: width - 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 220,
                    width: width - 50,
                    margin: EdgeInsets.only(left: 0, right: 10),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Title', style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),),
                          Text('Text', style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w300,
                            color: Colors.black38,
                          ),),
                          Divider(thickness: 2,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage('https://us.123rf.com/450wm/kritchanut/kritchanut1401/kritchanut140100054/25251050-photo-de-profil-d-affaires-de-l-avatar.jpg?ver=6'),
                              ),
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage('https://us.123rf.com/450wm/kritchanut/kritchanut1401/kritchanut140100054/25251050-photo-de-profil-d-affaires-de-l-avatar.jpg?ver=6'),
                              ),
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage('https://us.123rf.com/450wm/kritchanut/kritchanut1401/kritchanut140100054/25251050-photo-de-profil-d-affaires-de-l-avatar.jpg?ver=6'),
                              ),
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage('https://us.123rf.com/450wm/kritchanut/kritchanut1401/kritchanut140100054/25251050-photo-de-profil-d-affaires-de-l-avatar.jpg?ver=6'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 220,
                    width: width - 50,
                    margin: EdgeInsets.only(left: 0, right: 10),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Title', style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),),
                          Text('Text', style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w300,
                            color: Colors.black38,
                          ),),
                          Divider(thickness: 2,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage('https://us.123rf.com/450wm/kritchanut/kritchanut1401/kritchanut140100054/25251050-photo-de-profil-d-affaires-de-l-avatar.jpg?ver=6'),
                              ),
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage('https://us.123rf.com/450wm/kritchanut/kritchanut1401/kritchanut140100054/25251050-photo-de-profil-d-affaires-de-l-avatar.jpg?ver=6'),
                              ),
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage('https://us.123rf.com/450wm/kritchanut/kritchanut1401/kritchanut140100054/25251050-photo-de-profil-d-affaires-de-l-avatar.jpg?ver=6'),
                              ),
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage('https://us.123rf.com/450wm/kritchanut/kritchanut1401/kritchanut140100054/25251050-photo-de-profil-d-affaires-de-l-avatar.jpg?ver=6'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30.0, bottom: 20, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recent Contest'),
                  Spacer(),
                  Text('Show all'),
                  Container(
                    height: 25,
                    width: 25,
                    color: Colors.deepOrangeAccent,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
