import 'package:flutter/material.dart';
import '../../../../assets/utils/colors.dart';
import '../../../search/presentation/pages/search_page.dart';
import 'main_page.dart';

class HomePage extends StatefulWidget {
  static const String router = 'router1';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List pages = [
    MainFoodPage(),
    SeachPage(),
    MainFoodPage(),
    MainFoodPage(),
    MainFoodPage(),
  ];

  void onTapNav(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.mainGreenColor,
        unselectedItemColor: AppColors.greyColor1,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        selectedFontSize: 0.0,
        unselectedFontSize: 0.0,
        onTap: onTapNav,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_travel), label: "history"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: "cart"),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: "me"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "me"),
        ],
      ),
    );
  }
}
