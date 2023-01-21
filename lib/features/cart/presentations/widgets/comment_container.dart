import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/big_text_widget.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/small_text_widget.dart';

class CommentContainer extends StatelessWidget {
  String text1;
  String text2;
  String text3;
  String image1;
  String image2;

  CommentContainer({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.image1,
    required this.image2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      margin: EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            offset: Offset(0, 2),
            color: Colors.grey.withOpacity(0.2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 14, left: 14, top: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image(image: AssetImage(image1),),
                    SizedBox(width: 8,),
                    BigText(text: text1,color: Color(0xFF8FDA38),size: 12,),
                  ],
                ),
                SmallText(text: "23 Январ, 2022, ш. Ташкент"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 12,right: 12, top: 12, bottom: 12),
              child: BigText(text: text2,size: 14,)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Container(
               margin: EdgeInsets.only(right: 12, left: 12,top: 16),
               child: Row(
                 children: [
                   CircleAvatar(
                     radius: 8,
                     child: Image(image: AssetImage(image2),),
                   ),
                   SizedBox(width: 5),
                   BigText(text: text3,color: Colors.black,size: 13,)
                 ],
               ),
             ),
              Container(
                  margin: EdgeInsets.only(right: 12, left: 12,top: 16),
                  child: Icon(Icons.star_border_rounded)),
            ],
          ),
        ],
      ),
    );
  }
}
