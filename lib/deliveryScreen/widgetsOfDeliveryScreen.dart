import 'package:flutter/material.dart';

class DeliveryCard extends StatelessWidget {
  DeliveryCard(
      {this.locationWithFlag,
      this.buttonTitle,
      this.buttonColor,
      this.mainHeadTitle,
      this.deliveryNumber,
      this.totalMoney,
      this.weight,
      this.hasDeliverySection = false});

  final String locationWithFlag, buttonTitle;
  final Color buttonColor;
  final String mainHeadTitle;
  final String deliveryNumber;
  final String totalMoney;
  final String weight;
  final bool hasDeliverySection;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          ListTile(
            title: Text(locationWithFlag),
            trailing: Container(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: buttonColor,
              ),
              child: Text(
                buttonTitle,
                style: TextStyle(color: Colors.white),
              ),
            ),
            visualDensity: VisualDensity(horizontal: 0, vertical: -2),
          ),
          ListTile(
            title: Text(
              mainHeadTitle,
              style: TextStyle(fontSize: 20),
            ),
            visualDensity: VisualDensity(horizontal: 0, vertical: -2),
          ),

          // has Delivery Section

          hasDeliverySection == true
              ? ListTile(
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
                                color: Colors.grey[700],
                              ),
                            ),
                            WidgetSpan(
                                child: SizedBox(
                              width: 3,
                            )),
                            TextSpan(
                              text: deliveryNumber,
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
                                color: Colors.grey[700],
                              ),
                            ),
                            WidgetSpan(
                                child: SizedBox(
                              width: 3,
                            )),
                            TextSpan(
                              text: totalMoney,
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
                                color: Colors.grey[700],
                              ),
                            ),
                            WidgetSpan(
                                child: SizedBox(
                              width: 3,
                            )),
                            TextSpan(
                              text: weight,
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
