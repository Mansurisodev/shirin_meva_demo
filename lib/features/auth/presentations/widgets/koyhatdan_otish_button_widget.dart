import 'package:flutter/material.dart';

class RoyhatdanOtishButton extends StatelessWidget {
  const RoyhatdanOtishButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: EdgeInsets.only(bottom: 15,left: 16, right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            offset: Offset(1, 0),
            color: Colors.black.withOpacity(0.2),
          ),
          BoxShadow(
            offset: Offset(0, 1),
            color: Colors.black.withOpacity(0.2),
          ),
          BoxShadow(
            blurRadius: 1,
            offset: Offset(-1, 0),
            color: Colors.black.withOpacity(0.2),
          ),
          BoxShadow(
            blurRadius: 1,
            offset: Offset(0, -1),
            color: Colors.black.withOpacity(0.2),
          ),
        ],
      ),
      child: Center(
        child: Text("Рўйхатдан ўтиш",style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w700),),
      ),
    );
  }
}
