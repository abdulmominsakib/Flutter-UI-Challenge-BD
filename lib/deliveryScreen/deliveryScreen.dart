import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DeliveryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF2F91E8),
        appBar: AppBar(
          backgroundColor: Color(0xFF2F91E8),
          elevation: 0,
          title: Container(
            alignment: Alignment.centerRight,
            child: Text(
              'New',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 12, right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Deliveries',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                elevation: 5,
                child: Column(
                  children: [
                    ListTile(
                      title: Text('🇺🇸 New Jersey'),
                      trailing: Container(
                        padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black54,
                        ),
                        child: Text(
                          'Draft',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      visualDensity: VisualDensity(horizontal: 0, vertical: -2),
                    ),
                    ListTile(
                      title: Text(
                        'New Package In USA',
                        style: TextStyle(fontSize: 20),
                      ),
                      visualDensity: VisualDensity(horizontal: 0, vertical: -2),
                    ),
                    ListTile(
                      tileColor: Colors.grey[400],
                      visualDensity: VisualDensity(horizontal: 0, vertical: -2),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.assignment,
                                    size: 17,
                                  ),
                                ),
                                TextSpan(
                                  text: '1518518810189110',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.monetization_on,
                                    size: 17,
                                  ),
                                ),
                                TextSpan(
                                  text: '500',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.shopping_basket,
                                    size: 17,
                                  ),
                                ),
                                TextSpan(
                                  text: 'n/a',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
