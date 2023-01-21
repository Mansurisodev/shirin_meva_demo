import 'package:flutter/cupertino.dart';

class RowTextWidget extends StatelessWidget {
  String text1;
  String text2;
   RowTextWidget({Key? key,
    required this.text1,
     required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text1, style: TextStyle(fontSize: 14)),
        Text(text2, style: TextStyle(fontSize: 14, color: Color(0xFF52A83A))),
      ],
    );
  }
}
