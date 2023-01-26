import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';
import 'package:shirin_meva_demo_ui/features/cart/presentations/pages/cart_page.dart.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/big_text_widget.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/popular_encoming_widget.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/small_text_widget.dart';
import 'package:shirin_meva_demo_ui/features/search/presentation/widgets/comment_container_widgets.dart';
import 'package:shirin_meva_demo_ui/features/search/presentation/widgets/horizontal_recomendation_widget.dart';
import 'package:shirin_meva_demo_ui/features/search/presentation/widgets/popular_encoming_widget.dart';
import 'package:shirin_meva_demo_ui/features/search/presentation/widgets/row_search_and_setting_widget.dart';

class SeachPage extends StatefulWidget {
  const SeachPage({Key? key}) : super(key: key);

  @override
  State<SeachPage> createState() => _SeachPageState();
}

class _SeachPageState extends State<SeachPage>
    with SingleTickerProviderStateMixin {
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
          RowSearchAndSetting(),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: white,
                  blurRadius: 5.0,
                  offset: Offset(5, 5),
                ),
                BoxShadow(
                  color: white,
                  offset: Offset(-5, 0),
                ),
                BoxShadow(
                  color: white,
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
                    color: grey4,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TabBar(
                    controller: _tabController,
                    // give the indicator a decoration (color and border radius)
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: white,
                          blurRadius: 5.0,
                          offset: Offset(5, 5),
                        ),
                        BoxShadow(
                          color: white,
                          offset: Offset(-5, 0),
                        ),
                        BoxShadow(
                          color: white,
                          offset: Offset(5, 0),
                        ),
                      ],
                    ),
                    labelColor: mainDark,
                    unselectedLabelColor:  mainDark,
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
                VerticalScrollContainer(),
                Encoming(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
