import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/small_text_widget.dart';

import 'big_text_widget.dart';

class CatagoriyWidget extends StatelessWidget {
  String image;
  String bigText;
  String smalText;

  CatagoriyWidget({
    super.key,
    required this.image,
    required this.bigText,
    required this.smalText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 10),
      width: 134.0,
      height: 119.0,
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
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            SizedBox(height: 5),
            CircleAvatar(backgroundImage: AssetImage(image)),
            SizedBox(height: 5),
            BigText(text: bigText, size: 12),
            SizedBox(height: 5),
            SmallText(text: smalText),
          ],
        ),
      ),
    );
  }
}
