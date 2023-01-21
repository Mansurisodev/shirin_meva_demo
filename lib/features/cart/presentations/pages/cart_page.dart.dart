import 'package:flutter/material.dart';

import '../../../../assets/utils/colors.dart';
import '../../../home/presentations/widgets/big_text_widget.dart';
import '../../../home/presentations/widgets/small_text_widget.dart';
import '../widgets/bold_text.dart';
import '../widgets/circle_and_text_widget.dart';
import '../widgets/comment_container.dart';
import '../widgets/location_widgets.dart';
import '../widgets/logo_and_text_widgets.dart';
import '../widgets/row_icons_widgets.dart';
import '../widgets/row_two_container_widgets.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          //image
          SliverAppBar(
            toolbarHeight: 80,
            title: Container(
              child: RowIconWidget(
                  icon1: Icons.arrow_back, icon2: Icons.star_border_outlined),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.mainWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child:Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 16, right: 12, left: 16, top: 16),
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFF1F1F1F1),
                      ),
                      child: GestureDetector(
                          onTap: () {}, child: Icon(Icons.arrow_back)),
                    ),
                    SizedBox(width: 12),
                    Container(
                        margin: EdgeInsets.only(bottom: 16, top: 16),
                        child: BigText(text: "Ўзбекистоннинг олий навли  барра анори",size: 16)),
                  ],
                ),

              ),
            ),
            pinned: true,
            backgroundColor: Color(0xFFFFFFFF),
            expandedHeight: 290,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'lib/assets/images/fruit/fruit1.png',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(right: 16, top: 16,left: 16),
                    child: SmallText(text: 'Сабзавотлар', color: Color(0xFF439C3B),size: 16)),
                Container(
                    margin: EdgeInsets.only(right: 16, top: 16,left: 16),
                    child: BoldText(text:'Ўзбекистоннинг олий навли  барра анори',size: 16)),
                Container(
                    margin: EdgeInsets.only(right: 16, top: 16,left: 16),
                    child: CircleAndTextWidget(text: 'Barlos agro', image: 'lib/assets/images/company/capm2.png')),
                Container(
                    height: 1,
                    color: Color(0xFFE2E2E2),
                    margin: EdgeInsets.only(right: 16, top: 16,left: 16)),
                Container(
                    margin: EdgeInsets.only(right: 16, top: 16,left: 16),
                    child: BoldText(text:'Махсулотлар накида ',size: 16)),
                Container(
                    margin: EdgeInsets.only(right: 16, top: 8,left: 16),
                    child: SmallText(text:'Ўзбекистон Анорчилар ассоциасиясининг асосий мақсади– қишлоқ хўжалиги экинларини етиштиришда илғор тажрибаларни оммалаштириш, маҳсулотларни стандартлаштириш ва сертификасиялаш, истиқболли навларни яратиш, жаҳон бозори конъюнктурасини ўрганиш, маҳсулотларнинг тижорат намуналарини яратиш, уларни брендлаш, халқаро кўргазмаларда иштирок этиш, ишлаб чиқарувчиларни мамлакатимизда рағбатлантириш ва қўллаб-қувватлаш. ташқи бозорлар, маҳсулотларни қайта ишлаш бўйича инвестисия лойиҳаларини ўрганишдан иборатдир.',size: 14, color: Color(0xFF4A4A4A),)),
                Container(
                  margin: EdgeInsets.only(right: 16, top: 8,left: 16),
                  child: LogoAndTextWidget(text: '5 125 000 сум', logo: 'lib/assets/images/logo/vector_logo.png'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 16, top: 8,left: 16),
                  child: RowTwoContainer(leftText1: 'Мавжуд', leftText2: "7 тонна",rightText1: "Кутилмоқда: ",rightText2: "18 тонна",image: "lib/assets/images/logo/ok.png",rightText3:"(18.01.23)",),
                ),
                Container(
                  margin: EdgeInsets.only(right: 16, top: 8,left: 16),
                  child: LocationWidget(image1: 'lib/assets/images/loc.png',image2: 'lib/assets/images/l.png',text: 'Тошкент ш. Бектемир т. Бухоро к. 42-уй'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 16, top: 32,left: 16),

                  child: BoldText(text: 'Изоҳлар',),
                ),
                Container(
                  height: 500,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      CommentContainer(text1: 'Кўринишидан яхши махсулотлга ўхшайди, келаси йил олиб экиб кўраман', text2: 'Хасбулла Магомедов', text3: '23 Январ, 2022', image1: 'lib/assets/images/logo/group1.png',image2: 'lib/assets/images/logo/group1.png',),
                      // CommentContainer(text1: 'Кўринишидан яхши махсулотлга ўхшайди, келаси йил олиб экиб кўраман', text2: 'Хасбулла Магомедов', text3: '23 Январ, 2022', image: 'lib/assets/images/el2.png'),
                      // CommentContainer(text1: 'Кўринишидан яхши махсулотлга ўхшайди, келаси йил олиб экиб кўраман', text2: 'Хасбулла Магомедов', text3: '23 Январ, 2022', image: 'lib/assets/images/el3.png'),
                      // CommentContainer(text1: 'Кўринишидан яхши махсулотлга ўхшайди, келаси йил олиб экиб кўраман', text2: 'Хасбулла Магомедов', text3: '23 Январ, 2022', image: 'lib/assets/images/el1.png'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              height: 60,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [(new Color(0xFF8FDA38)), new Color(0xFF439C3B)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("lib/assets/images/call_icon.png",color: Colors.white,width: 16,height: 16,),
                  SizedBox(width: 10),
                  BoldText(text: "Қўнғироқ қилиш",color: Colors.white),

                ],
              ),
            ),
          ],

        ),
      ),

    );
  }
}

