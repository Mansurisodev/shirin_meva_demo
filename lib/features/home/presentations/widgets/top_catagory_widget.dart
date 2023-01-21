import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/small_text_widget.dart';

import '../../../../assets/utils/colors.dart';
import 'big_text_widget.dart';

class RectangleCatagory extends StatelessWidget {
  String image;
  String bigText;
  String smalText;

  RectangleCatagory({
    super.key,
    required this.image,
    required this.bigText,
    required this.smalText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 237,
      width: 291,
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Column(
        children: [
          //images container
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              color: Colors.white38,
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          //text container
          Expanded(
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('lib/assets/images/logo/vector4.svg'),
                      ),
                      BigText(text: "сабзавотлар", color: AppColors.mainGreenColor, size: 14),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 17, left: 17),
                    child: BigText(
                      text: "5 125 00 сум  ",
                      size: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 17, left: 17, top: 5),
                    child: SmallText(
                      text: "Марказий Осиё барра сабзавотларидан ассорти ",
                      size: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
