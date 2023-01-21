import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/features/search/presentation/widgets/row_search_and_setting_widget.dart';

import '../../../cart/presentations/pages/cart_page.dart.dart';
import '../../../home/presentations/widgets/big_text_widget.dart';
import '../../../home/presentations/widgets/small_text_widget.dart';
import '../widgets/comment_container_widgets.dart';

class SeachPage extends StatefulWidget {
  const SeachPage({Key? key}) : super(key: key);

  @override
  State<SeachPage> createState() => _SeachPageState();
}

class _SeachPageState extends State<SeachPage>
    with SingleTickerProviderStateMixin {

   var campan =[
     'lib/assets/images/company/cam1.png',
     'lib/assets/images/company/capm2.png',
     'lib/assets/images/company/cam1.png',

   ];
  var image = [
    'lib/assets/images/search/seach1.png',
    'lib/assets/images/search/seach3.png',
    'lib/assets/images/search/seach2.png',
  ];
  var cirle = [
    'lib/assets/images/el1.png',
    'lib/assets/images/el2.png',
    'lib/assets/images/el3.png',
  ];

   var icon = [
     'lib/assets/images/el1.png',
     'lib/assets/images/el2.png',
     'lib/assets/images/el3.png',
   ];
  bool isLoading = true;

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: 130,
            padding: EdgeInsets.only(top: 50),
            child: RowSearchAndSetting(),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
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
              children: [
                // give the tab bar a height [can change hheight to preferred height]
                Container(
                  margin: EdgeInsets.only(right: 16, left: 16),
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TabBar(
                    controller: _tabController,
                    // give the indicator a decoration (color and border radius)
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFF7F7F7),
                          blurRadius: 1.0,
                          offset: Offset(1, 1),
                        ),
                        BoxShadow(
                          color: Color(0xFFF7F7F7),
                          offset: Offset(-1, 0),
                        ),
                        BoxShadow(
                          color: Color(0xFFF7F7F7),
                          offset: Offset(1, 0),
                        ),
                        BoxShadow(
                          color: Color(0xFFF7F7F7),
                          offset: Offset(0, -1),
                        ),
                      ],
                    ),
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(
                        text: 'Place Bid',
                      ),
                      Tab(
                        text: 'Buy Now',
                      ),
                    ],
                  ),
                ),
                // tab bar view here
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // first tab bar view widget
                ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return _itemList(index);
                  },
                ),

                // second tab bar view widget
                ListView(
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
                        child: CommentConatiner(text1: "Сабзавотлар", text2: 'Хайрия учун зудлик билан 10 тонна банан керак', text3: "Хасбулла Магомедов", image1: cirle[0],image2:icon[0] ,)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemList(int index) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(12),
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
      margin: EdgeInsets.only(right: 16, left: 16, top: 16, bottom: 16),
      height: 291,
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                child: Container(
                  height: 186,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage('${image[index]}'),
                      fit: BoxFit.cover,
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
                ),
              ),
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1D1D).withOpacity(0.9),
                  ),
                  margin: EdgeInsets.only(top: 138),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            right: 8, left: 12, top: 8, bottom: 8),
                        height: 32,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 8,
                              backgroundImage: AssetImage(
                                  campan[index]),
                            ),
                            SizedBox(width: 4),
                            BigText(
                              text: "Agro Oil",
                              size: 12,
                              color: Color(0xFFFFFFFF),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            right: 8, left: 12, top: 8, bottom: 8),
                        height: 32,
                        child: Row(
                          children: [
                            BigText(
                                text: "125",
                                size: 12,
                                color: Color(0xFFFFFFFF)),
                            SizedBox(width: 4),
                            Icon(Icons.remove_red_eye, color: Colors.grey),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 350,
                child: Container(
                  height: 32,
                  width: 32,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromRGBO(255, 255, 255, 0.12),
                  ),
                child: Center(
                  child: Icon(Icons.star_border_rounded,color: Colors.white,),
                ),
              ),),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10,top: 10),
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(12),
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
            height: 105,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset("lib/assets/images/logo/group1.png"),
                    SizedBox(width: 5.14),
                    Text("Сабзавотлар"),
                  ],
                ),
                SizedBox(height: 2),
                BigText(text: "123 000 so'm"),
                SizedBox(height: 6),
                index.isFinite ? SmallText(text: "500 000 00 so'm") : Text(""),
                SizedBox(height: 6),
                SmallText(text: 'Олий навли янги узилган анор'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;

  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2, configuration.size!.height);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
