import 'package:branchx_ui_test/basic/resource.dart';
import 'package:branchx_ui_test/drawer_custom_page.dart';
import 'package:branchx_ui_test/sliding_card_carousel.dart';
import 'package:branchx_ui_test/widgets/sliding_carousel.dart';
import 'package:branchx_ui_test/widgets/bottom_navigation_bar.dart';
import 'package:branchx_ui_test/widgets/body_category_page.dart';
import 'package:branchx_ui_test/pay_your_bills/pay_your_bill_page.dart';
import 'package:branchx_ui_test/status/status_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (BuildContext context, Widget? child) {
          return  Scaffold(
            backgroundColor: Colors.white,
            drawer: DrawerCustomPage(),
            appBar: AppBar(
              backgroundColor: Colors.white,
              toolbarHeight: 50.h,
              elevation: 0,
              title: SvgPicture.asset(Resource.logo_image,),
              leadingWidth: 60.w,
              titleSpacing: 0,
              leading: Builder(
                builder: (context) => Row(
                  children: [
                    SizedBox(width: 10.w,),
                    IconButton(
                      icon: SvgPicture.asset(Resource.drawer_image),
                      iconSize: 32.w,
                      onPressed: () async {
                        await Future.delayed(Duration(milliseconds: 10));
                        Scaffold.of(context).openDrawer();
                      } ,
                      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                    ),

                  ],
                ),
              ),

              actions: [
                IconButton(
                  icon: SvgPicture.asset(Resource.bellImage),
                  iconSize: 32.w,
                  onPressed: () {},
                ),
                IconButton(
                  icon: SvgPicture.asset(Resource.shutdown_icon),
                  iconSize: 32.w,
                  onPressed: () {},
                ),
                SizedBox(width: 5.w,)
              ],
            ),
            floatingActionButton: Stack(
              fit: StackFit.expand,
              children: [
                Align(alignment: const Alignment(1.3, 1.1),child: SvgPicture.asset(Resource.phone_image),),

                Align(alignment: const Alignment(0.07, 1.12),child: CircleAvatar(
                  backgroundColor: const Color(0xffFF808D),
                  radius: 30,
                  child: SvgPicture.asset(Resource.xenie_image),),),

              ],),

            // Bottom Navigation bar
            bottomNavigationBar: CustomBottomNavigationBar(),

            body: SingleChildScrollView(
              child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xffF7F7F7),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        // Status Bar
                        child: StatusPage(),
                      ),
                      SlidingCardCarousel(),
                      const SizedBox(height: 10,),

                      // main Category container area (like: gold, scan & pay, Jewelry...)
                      BodyCategoryPage(),

                       SizedBox(height: 10.h),

                      SlidingCarousel(),
                       SizedBox(height: 20.h),

                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Pay your Bills', style: TextStyle(color: Color(0xff404040), fontFamily: 'Rubik', fontSize: 16, fontWeight: FontWeight.bold,),)
                        ),
                      ),
                      SizedBox(height: 20.h,),

                      // Pay your bill Container area
                     PayYourBillsPage(),

                      SizedBox(height: 60.h,),

                    ],
                  )),
            ),
          );
        }
    );
  }
}

