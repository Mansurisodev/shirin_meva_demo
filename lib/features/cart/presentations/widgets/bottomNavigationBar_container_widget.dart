import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';
import 'package:shirin_meva_demo_ui/assets/constants/icons.dart';

class BottomNavigationBarContainerWidget extends StatelessWidget {
  const BottomNavigationBarContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 20, left: 20),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [(new Color(0xFF8FDA38)), new Color(0xFF439C3B)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppIcons.call_icon, color: white, height: 16,width: 16,),
                SizedBox(width: 10),
                Text("Қўнғироқ қилиш", style: TextStyle(color: white, fontSize: 16, fontWeight: FontWeight.w600),),
              ],
            ),
          ),
        ],

      ),
    );
  }
}
