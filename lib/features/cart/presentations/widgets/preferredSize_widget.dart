import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/big_text_widget.dart';

class PreferredSizeWidget extends StatelessWidget {
  const PreferredSizeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child:Row(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 16, right: 12, left: 16, top: 16),
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFF1F1F1F1),
            ),
            child: GestureDetector(
                onTap: () {}, child: Icon(Icons.arrow_back)),
          ),
          SizedBox(width: 12),
          Container(
              margin: EdgeInsets.only(bottom: 16, top: 16),
              child: BigText(text: "Ўзбекистоннинг олий навли  барра анори",size: 16)),
        ],
      ),

    );
  }
}
