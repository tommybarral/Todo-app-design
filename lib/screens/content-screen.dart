import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import '../model/section_data.dart';


class ContentScreen extends StatefulWidget {
  //static const routeName = '/content-screen';
  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  @override
  Widget build(BuildContext context) {

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
                        Text('Will Smith', style: TextStyle(color: Color(
                            0xFF3b3f42),
                            fontSize: 18,
                            decoration: TextDecoration.none),
                        ),
                        SizedBox(height: 5,),
                        Text('Top level', style: TextStyle(color: Colors.grey,
                            fontSize: 12,
                            decoration: TextDecoration.none),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 30.0, bottom: 20, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular Contest', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
                  Spacer(),
                  Text('Show all', style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),),
                  Icon(Icons.arrow_forward,),
                ],
              ),
            ),
            Container(
              height: 250,
              width: width - 50,
              child: ListView.builder(
                itemCount: section.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
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
                          Text(section[index].text, style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),),
                          Text(section[index].text, style: TextStyle(
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
                                backgroundImage: NetworkImage(
                                    section[index].img),
                              ),
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                    section[index].img),
                              ),
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                    section[index].img),
                              ),
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                    section[index].img),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 30.0, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recent Contest', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
                  Spacer(),
                  Text('Show all', style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),),
                  Icon(Icons.arrow_forward,),
                ],
              ),
            ),
            Container(
              height: 150,
              child: ListView.builder(
                  itemCount: section.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: 5, bottom: 8, right: 5),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, bottom: 8.0, right: 15),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(section[index].img),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(section[index].status, style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w300,
                                ),),
                                Text(section[index].text, style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black38,
                                ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
            ),
          ],
        ),
      ),
    );
  }
}