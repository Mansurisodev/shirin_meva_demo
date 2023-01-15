import 'package:flutter/material.dart';

import '../../../../assets/utils/colors.dart';
import '../../../../assets/utils/dimensions.dart';
import '../widgets/big_text_widget.dart';
import 'home_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    // print("current height is " + MediaQuery.of(context).size.height.toString());

    return Scaffold(
      backgroundColor: AppColors.mainWhite,
      body: Column(
        children: [
         // Text and icons main appbar
          Container(
            color: AppColors.mainWhite,
            margin: EdgeInsets.only(right: Dimensions.width10, left: Dimensions.width10, top: Dimensions.height45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: AppColors.mainWhite,
                        child: Image(
                          height: 28.0,
                          width: 28.0,
                          image: AssetImage("lib/assets/images/elips1.png"),
                          fit: BoxFit.cover,
                          // backgroundImage: AssetImage(),
                        ),
                      ),
                    ),
                    // appBarText
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: BigText(text: "Кучкоров Мансур ", color: AppColors.darkBigText, size: 17),
                    ),
                  ],
                ),
                // AppbarText
                Row(
                  children: [
                    IconButton(
                      icon: Image(
                        image: AssetImage('lib/assets/images/icons/search@2x.png'),
                        // fit: BoxFit.cover,
                        color: AppColors.greyColor1,
                        height: Dimensions.height20,
                        width: Dimensions.width20,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image(
                        image: AssetImage('lib/assets/images/icons/notification.png'),
                        // fit: BoxFit.cover,
                        color: AppColors.greyColor1,
                        height: Dimensions.height20,
                        width: Dimensions.width20,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: FoodPageBody(),
            ),
          ),
        ],
      ),
    );
  }
}
