import 'package:flutter/material.dart';

class EventButton extends StatelessWidget {
  EventButton({this.icon, this.text});

  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFF2A414F),
      ),
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class ExcerptPost extends StatelessWidget {
  ExcerptPost({this.headLine, this.dateOfPost, this.location, this.imageUrl});

  final String headLine;
  final String dateOfPost;
  final String location;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.only(top: 8, bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFF2A414F),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    headLine,
                    style: TextStyle(color: Colors.white70, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8, top: 8),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.white70),
                      children: [
                        WidgetSpan(
                          child: Icon(
                            Icons.calendar_today,
                            size: 15,
                            color: Colors.white70,
                          ),
                        ),
                        TextSpan(text: ' '),
                        TextSpan(text: dateOfPost),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8, top: 8),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.white70),
                      children: [
                        WidgetSpan(
                          child: Icon(
                            Icons.place,
                            size: 15,
                            color: Colors.white70,
                          ),
                        ),
                        TextSpan(text: ' '),
                        TextSpan(text: location),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            flex: 1,
            child: Image.network(
              '$imageUrl',
              width: 150,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
