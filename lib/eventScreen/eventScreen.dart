import 'package:flutter/material.dart';
import 'package:flutteruichallenge/eventScreen/widgetsOfEventScreen.dart';

class EventScreen extends StatefulWidget {
  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> cardWidget = [
      EventButton(
        icon: Icon(
          Icons.headset_mic,
          color: Colors.white,
        ),
        text: 'Online Meeting',
      ),
      EventButton(
        icon: Icon(
          Icons.sports_football,
          color: Colors.white,
        ),
        text: 'Sports',
      ),
      EventButton(
        icon: Icon(
          Icons.school,
          color: Colors.white,
        ),
        text: 'Education',
      ),
      EventButton(
        icon: Icon(
          Icons.face,
          color: Colors.white,
        ),
        text: 'Facebook',
      ),
      EventButton(
        icon: Icon(
          Icons.work,
          color: Colors.white,
        ),
        text: 'Twitter',
      ),
    ];

    List<Widget> allPosts = [
      ExcerptPost(
        headLine: 'Sport Meet in Galaxy Field',
        dateOfPost: 'Jan 12, 2020',
        location: 'Chittagong, Bangladesh',
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/05/20/21/57/football-1406106_960_720.jpg',
      ),
      ExcerptPost(
        headLine: 'Art & Meet In Street Plaza',
        dateOfPost: 'Feb 2, 2020',
        location: 'Chittagong, Bangladesh',
        imageUrl:
            'https://cdn.pixabay.com/photo/2019/09/05/05/28/eye-4453129_960_720.jpg',
      ),
      ExcerptPost(
        headLine: 'Great Ship in History',
        dateOfPost: 'Feb 12, 2020',
        location: 'Chittagong, Bangladesh',
        imageUrl:
            'https://cdn.pixabay.com/photo/2015/03/05/01/46/sailing-ship-659758_960_720.jpg',
      ),
      ExcerptPost(
        headLine: 'How airplane are made',
        dateOfPost: 'Feb 15, 2020',
        location: 'Chittagong, Bangladesh',
        imageUrl:
            'https://cdn.pixabay.com/photo/2015/04/20/13/09/airplane-731126_960_720.jpg',
      ),
      ExcerptPost(
        headLine: 'Why Flutter Is great',
        dateOfPost: 'Feb 18, 2020',
        location: 'Chittagong, Bangladesh',
        imageUrl:
            'https://cdn.pixabay.com/photo/2015/05/28/14/53/ux-788002_960_720.jpg',
      ),
      ExcerptPost(
        headLine: 'Developer needs these',
        dateOfPost: 'Feb 22, 2020',
        location: 'Chittagong, Bangladesh',
        imageUrl:
            'https://cdn.pixabay.com/photo/2015/12/07/10/56/architect-1080589_960_720.jpg',
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF102633),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'All Events',
                  style: kDefaultTextStyle,
                ),
                Container(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: cardWidget.length,
                    itemBuilder: (BuildContext context, int index) {
                      return cardWidget[index];
                    },
                  ),
                ),
                Text(
                  'Popular Events',
                  style: kDefaultTextStyle,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: allPosts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return allPosts[index];
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
