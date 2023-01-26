import 'package:flutter/material.dart';


class LocationWidget extends StatelessWidget {
  String image1;
  // String image2;
  String text;
   LocationWidget({Key? key,
    required this.image1,
    // required this.image2,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 196,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFe8e8e8),
            blurRadius: 5.0,
            offset: Offset(5, 5),
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-5, 0),
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(5, 0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 145,
            padding: EdgeInsets.only(top: 12, right: 12, left: 12),
            child: Image.asset(
               image1,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Icon(Icons.location_on),
                  SizedBox(width: 4),
                  Text(text),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
