import 'package:flutter/cupertino.dart';

class AndWidget extends StatelessWidget {
  const AndWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(right: 10, left: 16),
          height: 1,
          width: 152,
          color: Color(0xFFE2E2E2),
        ),
        Text("Ёки",style: TextStyle(color: Color(0xFFB8B8B8)),),
        Container(
          margin: EdgeInsets.only(right: 16, left: 10),
          height: 1,
          width: 152,
          color: Color(0xFFE2E2E2),
        ),


      ],
    );
  }
}
