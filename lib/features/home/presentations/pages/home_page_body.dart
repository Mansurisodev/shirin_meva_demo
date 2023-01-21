import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shirin_meva_demo_ui/features/cart/presentations/pages/cart_page.dart.dart';
import 'package:shirin_meva_demo_ui/features/search/presentation/pages/search_page.dart';

import '../../../../assets/utils/colors.dart';
import '../../../../assets/utils/dimensions.dart';
import '../widgets/app_column_widget.dart';
import '../widgets/big_text_widget.dart';
import '../widgets/catagory_container_widgets.dart';
import '../widgets/icons_catagory_widget.dart';
import '../widgets/small_text_widget.dart';
import '../widgets/top_catagory_widget.dart';
import 'home_page.dart';


class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.95);
  var _currPageValue = 0.0;
  var _scaleFactor = 0.8;
  // double _height = ;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
        // print(_currPageValue.toString());
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //banner conatiner
        Container(
          height: 230,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
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
            children: [
              //banner
              Container(
                height: 180,
                child: PageView.builder(
                  controller: pageController,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return _buildPageItem(index);
                  },
                ),
              ),
              SizedBox(height: 10),
              // dots
              DotsIndicator(
                dotsCount: 4,
                position: _currPageValue,
                decorator: DotsDecorator(
                  activeColor: AppColors.mainColor,
                  size: const Size.square(5.0),
                  activeSize: Size(18.0, 3.0),
                  color: Colors.grey, // Inactive color
                  activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(height: 20),
              //slider section
            ],
          ),
        ),
        SizedBox(height: 20),
        // Машҳур компаниялар text
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: BigText(text: "Машҳур компаниялар", size: 18),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: SmallText(text: "Барчаси", size: 16),
            ),
          ],
        ),
        SizedBox(height: 20),
        //Company list horizontal
        Container(
          height: 120,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CatagoriyWidget(image: 'lib/assets/images/company/cam1.png', bigText: 'Agro oil', smalText: '49 та махсулот '),
              CatagoriyWidget(image: 'lib/assets/images/company/capm2.png', bigText: 'Barlos Agro', smalText: '9 та махсулот '),
              CatagoriyWidget(image: 'lib/assets/images/company/cam1.png', bigText: 'Agro oil', smalText: '49 та махсулот '),
              CatagoriyWidget(image: 'lib/assets/images/company/capm2.png', bigText: 'Barlos Agro', smalText: '9 та махсулот '),
            ],
          ),
        ),
        SizedBox(height: 20),
        //Tafsiya Etiladi text
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: BigText(text: "Тавсия этилади ", size: 18),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: SmallText(text: "Барчаси", size: 16),
            ),
          ],
        ),
        SizedBox(height: 20),
        //Company container list horizontal
        Container(
          height: 350,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              RectangleCatagory(image: 'lib/assets/images/fruit/fruit.jpeg', bigText: 'Barlos Agro', smalText: '49 та махсулот '),
              RectangleCatagory(image: 'lib/assets/images/fruit/fruit2.jpeg', bigText: 'Agro oil', smalText: '49 та махсулот '),
            ],
          ),
        ),
        SizedBox(height: 10),
        //Машхур элонлар text
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: BigText(text: "Елонлар катагориясы ", size: 18),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: SmallText(text: "Барчаси", size: 16),
            ),
          ],
        ),
        SizedBox(height: 10),
        //Container elon list horizontal
        Container(
          height: 100,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              IconCatagory(image: "lib/assets/images/logo/ok.png", bigText: "Cабзаводлар "),
              IconCatagory(image: 'lib/assets/images/logo/ok.png', bigText: "Мевалар "),
              IconCatagory(image: "lib/assets/images/logo/ok.png", bigText: "Узумлар  "),
              IconCatagory(image: "lib/assets/images/logo/ok.png", bigText: "Техника "),
            ],
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: BigText(text: "Машхур элонлар", size: 18),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: SmallText(text: "Барчаси", size: 16),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          height: 120,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              PopularAnnouncements(image: "lib/assets/images/acccaunt_circle.jpg", nameText: 'Хабиб Нурмагомедов ', bigText: "Хайрия учун зодлик билан, 10 туна ванна керак", smalltext: "23 Yanvar, 2023.02.08"),
              PopularAnnouncements(image: "lib/assets/images/acccaunt_circle.jpg", nameText: 'Хабиб Нурмагомедов ', bigText: "Хайрия учун зодлик билан, 10 туна ванна керак", smalltext: "23 Yanvar, 2023.02.08"),
              PopularAnnouncements(image: "lib/assets/images/acccaunt_circle.jpg", nameText: 'Хабиб Нурмагомедов ', bigText: "Хайрия учун зодлик билан, 10 туна ванна керак", smalltext: "23 Yanvar, 2023.02.08"),
              PopularAnnouncements(image: "lib/assets/images/acccaunt_circle.jpg", nameText: 'Хабиб Нурмагомедов ', bigText: "Хайрия учун зодлик билан, 10 туна ванна керак", smalltext: "23 Yanvar, 2023.02.08"),
            ],
          ),
        ),
      ],
    );
  }

  List<String> bannerImageName = [
    "lib/assets/images/banner/banner1.png",
    "lib/assets/images/banner/banner2.png",
    "lib/assets/images/banner/banner3.png",
    "lib/assets/images/banner/banner4.png",

  ];

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            // Write Tap Code Here.
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CartPage(),
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.only(left: 5, right:5, top: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: index.isEven ? Color(0xFFF2BD0F) : Color(0xFFF2BBF),
              image: DecorationImage(
                // image: AssetImage(bannerImageName[index]),
                image: AssetImage('lib/assets/images/banner/banner5.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
// Banner widgets
