import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/small_text_widget.dart';

class RowSearchAndSetting extends StatelessWidget {
   RowSearchAndSetting({Key? key,
  }) : super(key: key);
   String searchValue = '';
   final List<String> _suggestions = ['Afeganistan', 'Albania', 'Algeria', 'Australia', 'Brazil', 'German', 'Madagascar', 'Mozambique', 'Portugal', 'Zambia'];
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          flex: 5,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFF7F7F7),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFe8e8e8),
                  blurRadius: 5.0,
                  offset: Offset(5, 5),
                ),
              ],
            ),
            margin: EdgeInsets.only(right: 8, left: 16,bottom: 16,top: 20),
            height: 45,
            width: 45,
            child: Row(
              children: [
                SizedBox(width: 10),
                Image(image: AssetImage("lib/assets/images/icons/search@2x.png"),height: 20,),
                SizedBox(width: 4),
                SmallText(text: 'Қидириш', size: 16,color: Color(0xFFB8B8B8),),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.only(right: 8, left: 16,bottom: 16,top: 20),
            decoration: BoxDecoration(
              color: Color(0xFFF7F7F7),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFe8e8e8),
                  blurRadius: 5.0,
                  offset: Offset(5, 5),
                ),
              ],
            ),
            height: 45,
            width: 45,
            child: Center(
              child:Image(image: AssetImage("lib/assets/images/icons/light/filter@2x.png"),height: 25,color: Color(0xFF777777),),

            ),
          ),
        ),
      ],
    );
  }
}
