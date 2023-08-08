import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GridCategory extends StatelessWidget {
  const GridCategory({Key? key, required this.gridCategoryName, required this.gridCategoryIcon, }) : super(key: key);

  final String gridCategoryName;
  final String gridCategoryIcon;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Stack(
          children: [
            Column(
                children: [
                  const SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Container(
                        height: 78.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: const Color(0xffF7F7F7),
                            gradient: const LinearGradient(colors: [
                              Color(0xffECECEC),
                              Color(0xffFFFFFF)
                            ],
                              tileMode: TileMode.clamp,
                            ),
                            border: Border.all(color: const Color(0xffF7F7F7), width: 1 ),
                            boxShadow: [
                              BoxShadow(
                                  color: const Color(0xffD2D2D2).withOpacity(0.6),
                                  offset: const Offset(10, 10),
                                  spreadRadius: 0,
                                  blurRadius: 40
                              ),
                              const BoxShadow(
                                  color: Color(0xffFFFFFF),
                                  offset: Offset(-10, -10),
                                  spreadRadius: 0,
                                  blurRadius: 20
                              )
                            ]
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            (gridCategoryName == 'Gold' || gridCategoryName == 'Scan & Pay' ||
                        gridCategoryName == 'Spin Win' || gridCategoryName == 'Recharge & Bill'
                                || gridCategoryName == 'X Gold' || gridCategoryName == 'Jewelry'  )  ?

                                Image.asset(
                                  gridCategoryIcon,
                                   height: 32.h,
                                  width: 32.w,
                                )
                                :
                        SvgPicture.asset(gridCategoryIcon),
                            SizedBox(height: 15.h),
                            Text(gridCategoryName, overflow: TextOverflow.ellipsis, maxLines: 1, style: TextStyle(color: Color(0xff404040),
                              fontFamily: 'Rubik',
                              fontSize: 10.sp,
                              fontWeight: FontWeight.normal,
                            ),)
                          ],
                        )
                    ),
                  ),
                ]
            ),
         if  (gridCategoryName == 'Insurance') Align(
              alignment: Alignment(0.1,0.78),
              child: Container(
                height: 14.h,
                width: 39.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  color: Color(0xffFCB52C),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Free'.toUpperCase(), style: TextStyle(color: Color(0xff16122F),
                    fontFamily: 'Rubik',
                    fontSize: 6.sp,
                    fontWeight: FontWeight.normal,
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
