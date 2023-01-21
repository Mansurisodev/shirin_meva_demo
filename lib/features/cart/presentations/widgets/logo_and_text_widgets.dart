import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/small_text_widget.dart';

class LogoAndTextWidget extends StatelessWidget {
  String text;
  String logo;
  LogoAndTextWidget({Key? key,
    required this.text,
    required this.logo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(logo,width: 19.59, height: 15.95,),
        SizedBox(width: 8),
        SmallText(text: text,size: 22.4,color: Color(0xFF439C3B),),
      ],
    );
  }
}
