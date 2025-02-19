import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_comma/common/components/my_colors.dart';
import 'package:school_comma/common/components/my_images.dart';
import 'package:school_comma/common/layout/default_layout.dart';
import 'package:school_comma/main.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          children: [
            SizedBox(height: 78.h),
            renderWeather(),
            SizedBox(height: 30.h),
            renderStress(),
            SizedBox(height: 30.h),
            renderPost(),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget renderWeather() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: MyColors.yellow11,
      ),
      padding: EdgeInsets.symmetric(horizontal: 21.w),
      width: 387.w,
      height: 85.h,
      child: Row(
        children: [
          Image.asset(
            MyImages.sun,
            width: 50.w,
            height: 50.h,
          ),
          SizedBox(width: 35.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('맑음', style: TextStyle(fontSize: 16.sp, color: Colors.black),),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('30', style: TextStyle(fontSize: 16.sp, color: Colors.black),),
                  Image.asset(
                    MyImages.dot,
                    width: 10.w,
                    height: 10.h,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget renderStress() {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: MyColors.yellow4
        ),
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        width: 387.w,
        height: 85.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('자녀의 스트레스 지수는?', style: TextStyle(fontSize: 16.sp, color: Colors.black),),
            Text('지금 확인하러 가기', style: TextStyle(fontSize: 13.sp, color: const Color(0xffC6C8CC)),),
          ],
        ),
      ),
    );
  }

  Widget renderPost() {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: MyColors.yellow4
        ),
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        width: 387.w,
        height: 85.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('오늘의 게시물은?', style: TextStyle(fontSize: 16.sp, color: Colors.black),),
            Text('지금 확인하러 가기', style: TextStyle(fontSize: 13.sp, color: const Color(0xffC6C8CC)),),
          ],
        ),
      ),
    );
  }
}
