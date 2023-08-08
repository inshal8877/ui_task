import 'package:branchx_ui_test/basic/resource.dart';
import 'package:branchx_ui_test/widgets/category_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerCustomPage extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 50.h,
        automaticallyImplyLeading: true,
        elevation: 0,
        leading: Row(
          children: [
              SizedBox(width: 20.w,),
          SvgPicture.asset(Resource.logo_image,),],),
        leadingWidth: 100.w,
        actions: [
          IconButton(
            icon: SvgPicture.asset(Resource.closeButton_image),
            iconSize: 32.w,
            onPressed: () async {
              await Future.delayed(Duration(milliseconds: 10));
              Navigator.pop(context);
            }
          ),
          SizedBox(width: 10.w,),

        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 0.78.sh,
                decoration: const BoxDecoration(
                  color: Color(0xffF7F7F7),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      GridView.count(
                        crossAxisCount: 3,
                        shrinkWrap: true,
                        primary: false,
                        padding: const EdgeInsets.all(0),
                        crossAxisSpacing: 4,
                        mainAxisSpacing: 4,
                        children: const [
                          GridCategory(gridCategoryName : 'branchX', gridCategoryIcon: Resource.branchX_image),
                          GridCategory(gridCategoryName : 'X Gold', gridCategoryIcon: Resource.gold_image),
                          GridCategory(gridCategoryName : 'Scan & Pay', gridCategoryIcon: Resource.scanAndPay_image),
                          GridCategory(gridCategoryName : 'Send Money', gridCategoryIcon: Resource.sendMoney_image),
                          GridCategory(gridCategoryName : 'Jewelry', gridCategoryIcon: Resource.jewelry_image),
                          GridCategory(gridCategoryName : 'Spin Win', gridCategoryIcon: Resource.spinWin_image),
                          GridCategory(gridCategoryName : 'Rewards', gridCategoryIcon: Resource.rewards_image),
                          GridCategory(gridCategoryName : 'Wallet', gridCategoryIcon: Resource.wallet_image),
                          GridCategory(gridCategoryName : 'Insurance', gridCategoryIcon: Resource.insurance_image),
                          GridCategory(gridCategoryName : 'Pay Bills', gridCategoryIcon: Resource.payBills_image),
                          GridCategory(gridCategoryName : 'Support', gridCategoryIcon: Resource.support_image),
                          GridCategory(gridCategoryName : 'Passbook', gridCategoryIcon: Resource.passbook_image),
                          GridCategory(gridCategoryName : 'Language', gridCategoryIcon: Resource.language_image),
                        ],
                      ),
                      SizedBox(height: 20.h,)

                    ],
                  ),
                )),

            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 0.10.sh,
                  child: Row(
                    children: [
                      SvgPicture.asset(Resource.profilePic_image),
                      SizedBox(width: 10.w,),
                      Expanded(
                        child: Text('Rohan Vijapur', style: TextStyle(color: Color(0xff404040),
                          fontFamily: 'Rubik',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),),
                      )  ,
                      Align(alignment: Alignment.centerRight,child: SvgPicture.asset(Resource.logout2_image),),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
