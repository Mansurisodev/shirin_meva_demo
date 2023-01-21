import 'package:flutter/material.dart';

class TabBarWidgets extends StatelessWidget {

  TabController tabController;

   TabBarWidgets({Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16, left: 16),
      height: 45,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TabBar(
        controller: tabController,
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
            text: 'Телефон рақами',
          ),
          Tab(
            text: 'Электрон почта',
          ),
        ],
      ),
    );

  }
}
