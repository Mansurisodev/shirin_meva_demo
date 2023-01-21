import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/features/auth/presentations/widgets/kirish_button_widget.dart';
import 'package:shirin_meva_demo_ui/features/auth/presentations/widgets/row_text_widget.dart';
import 'package:shirin_meva_demo_ui/features/auth/presentations/widgets/tab_bar_widget.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/pages/home_page.dart';

import '../widgets/and_widget.dart';
import '../widgets/koyhatdan_otish_button_widget.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage>
    with SingleTickerProviderStateMixin {
  static const routeName = '/login-screen';

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  bool? isCheck = false;

  Widget login(IconData icon) {
    return Container(
      height: 50,
      width: 115,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.4), width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 24),
          TextButton(onPressed: () {}, child: Text('Login')),
        ],
      ),
    );
  }

  Widget userInput(TextEditingController userInput, String hintTitle,
      TextInputType keyboardType) {
    return Container(
      height: 55,
      // margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            offset: Offset(1, 0),
            color: Colors.black.withOpacity(0.2),
          ),
          BoxShadow(
            offset: Offset(0, 1),
            color: Colors.black.withOpacity(0.2),
          ),
          BoxShadow(
            blurRadius: 1,
            offset: Offset(-1, 0),
            color: Colors.black.withOpacity(0.2),
          ),
          BoxShadow(
            blurRadius: 1,
            offset: Offset(0, -1),
            color: Colors.black.withOpacity(0.2),
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 25.0, top: 15, right: 25),
        child: TextField(
          controller: userInput,
          autocorrect: false,
          enableSuggestions: false,
          autofocus: false,
          decoration: InputDecoration.collapsed(
            hintText: hintTitle,
            hintStyle: TextStyle(
                fontSize: 18,
                color: Colors.white70,
                fontStyle: FontStyle.italic),
          ),
          keyboardType: keyboardType,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF56AB39),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //bottom logo
            Expanded(
              flex: 2,
              child: Container(
                height: 160,
                color: Color(0xFF56AB39),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 16, right: 100),
                      child: Image.asset("lib/assets/images/icons/back@2x.png",
                          height: 20, width: 20, color: Colors.white),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 60),
                        child: Image.asset(
                            "lib/assets/images/logo/auth/logo.png",
                            color: Colors.white,
                            height: 84,
                            width: 154)),
                  ],
                ),
              ),
            ),

            Expanded(
              flex: 7,
              child: Container(
                height: 634,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Кириш",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      TabBarWidgets(tabController: tabController),
                      // TabBar
                      SizedBox(height: 10),
                      Text("Телефон рақамингиз"),
                      userInput(
                          emailController, 'Email', TextInputType.emailAddress),
                      RowTextWidget(
                          text1: "Паролингиз", text2: "Паролни унутдингизми?"),
                      userInput(passwordController, 'Password',
                          TextInputType.visiblePassword),
                      Container(
                        // margin: EdgeInsets.only(bottom:10,right: 300),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                                value: isCheck,
                                tristate: true,
                                onChanged: (newBoll) {
                                  setState(() {
                                    isCheck = newBoll;
                                  });
                                }),
                            Text("Эслаб қолиш"),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                          onTap: () {
                            // Write Tap Code Here.
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                          child: KirishButton()),
                      SizedBox(height: 10),
                      AndWidget(),
                      GestureDetector(
                        onTap: (){},
                          child: RoyhatdanOtishButton()),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
