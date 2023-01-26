import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/constants/images.dart';

class FlexibleSpaceWidget extends StatelessWidget {
  const FlexibleSpaceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Image.asset(
        AppImage.background_image10,
        width: double.maxFinite,
        fit: BoxFit.cover,
      ),
    );
  }
}
