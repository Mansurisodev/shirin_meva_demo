import 'package:flutter/cupertino.dart';

class RowIconWidget extends StatelessWidget {
  IconData icon1;
  IconData icon2;

  RowIconWidget({Key? key,
    required this.icon1,
    required this.icon2,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 36,
          width: 36,
          margin: EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xFF45535B),
          ),
          child: Icon(icon1, size: 24),
        ),
        Container(
          height: 36,
          width: 36,
          margin: EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xFF45535B),
          ),
          child: Icon(icon2, size: 24),
        ),
      ],
    );
  }
}
