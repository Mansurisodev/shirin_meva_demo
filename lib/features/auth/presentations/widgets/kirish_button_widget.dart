import 'package:flutter/material.dart';

class KirishButton extends StatelessWidget {
  KirishButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16, left: 16),
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
            colors: [(new Color(0xFF52A83A)), new Color(0xFF89D538)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: Center(
        child: Text(
          "Кириш",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
