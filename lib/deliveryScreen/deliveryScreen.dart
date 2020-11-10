import 'package:flutter/material.dart';
import 'package:flutteruichallenge/deliveryScreen/widgetsOfDeliveryScreen.dart';

class DeliveryScreen extends StatefulWidget {
  @override
  _DeliveryScreenState createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  List<Widget> deliveryList = [
    DeliveryCard(
      locationWithFlag: '🇺🇸 New Jersey',
      buttonColor: Color(0xFF7A7E81),
      buttonTitle: 'Draft',
      mainHeadTitle: 'New Package in USA',
      hasDeliverySection: false,
      // if true then it will show the data of delivery section
    ),
    DeliveryCard(
      locationWithFlag: '🇧🇩 Chittagong',
      buttonColor: Color(0xFF0A81E4),
      buttonTitle: 'Pending',
      mainHeadTitle: 'Samsung Curved 32 inch',
      hasDeliverySection: true,
      // if true then it will show the data of delivery section
      deliveryNumber: '1541818418118889',
      totalMoney: '5845',
      weight: 'n/a',
    ),
    DeliveryCard(
      locationWithFlag: '🇧🇩 Dhaka',
      buttonColor: Color(0xFF78B23D),
      buttonTitle: 'Arrived',
      mainHeadTitle: 'IPhone X Kidney Phone',
      hasDeliverySection: true,
      // if true then it will show the data of delivery section
      deliveryNumber: '504508419898081891',
      totalMoney: '105',
      weight: 'n/a',
    ),
    DeliveryCard(
      locationWithFlag: '🇨🇳 China',
      buttonColor: Color(0xFFE53A38),
      buttonTitle: 'Returned',
      mainHeadTitle: 'Copy jinish diye diche',
      hasDeliverySection: true,
      // if true then it will show the data of delivery section
      deliveryNumber: '1189165058146585089',
      totalMoney: '105',
      weight: 'n/a',
    ),
    DeliveryCard(
      locationWithFlag: '🇧🇩 Dhaka',
      buttonColor: Color(0xFF78B23D),
      buttonTitle: 'Arrived',
      mainHeadTitle: 'Iphone X onek purano hoye gece',
      hasDeliverySection: true,
      // if true then it will show the data of delivery section
      deliveryNumber: '504508419898081891',
      totalMoney: '105',
      weight: 'n/a',
    ),
    DeliveryCard(
      locationWithFlag: '🇧🇩 Dhaka',
      buttonColor: Color(0xFF78B23D),
      buttonTitle: 'Arrived',
      mainHeadTitle: 'IPhone X Kidney Phone',
      hasDeliverySection: true,
      // if true then it will show the data of delivery section
      deliveryNumber: '504508419898081891',
      totalMoney: '105',
      weight: 'n/a',
    ),
    DeliveryCard(
      locationWithFlag: '🇧🇩 Dhaka',
      buttonColor: Color(0xFF78B23D),
      buttonTitle: 'Arrived',
      mainHeadTitle: 'IPhone X Kidney Phone',
      hasDeliverySection: true,
      // if true then it will show the data of delivery section
      deliveryNumber: '504508419898081891',
      totalMoney: '105',
      weight: 'n/a',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton.icon(
                onPressed: null,
                icon: Icon(
                  Icons.store,
                  color: Colors.blue,
                ),
                label: Text(
                  'Deliveries',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              FlatButton.icon(
                onPressed: null,
                icon: Icon(Icons.redeem),
                label: Text('Packages'),
              ),
              FlatButton.icon(
                onPressed: null,
                icon: Icon(Icons.settings),
                label: Text('Settings'),
              ),
            ],
          ),
        ),
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
              Expanded(
                child: ListView.builder(
                  itemCount: deliveryList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return deliveryList[index];
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
