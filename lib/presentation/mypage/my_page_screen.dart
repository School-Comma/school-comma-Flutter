import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_comma/common/components/my_colors.dart';
import 'package:school_comma/common/layout/default_layout.dart';
import 'package:school_comma/presentation/user/login_screen.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final baseDecoration = BoxDecoration(
        borderRadius: BorderRadius.circular(15.r), color: MyColors.yellow4);

    return DefaultLayout(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 38.w),
        child: Column(
          children: [
            SizedBox(height: 80.h),
            Container(
              decoration: baseDecoration,
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              width: 353.w,
              height: 100.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '홍길동',
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '박태준',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '1월 3일',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 36.h),
            Container(
              decoration: baseDecoration,
              padding: EdgeInsets.symmetric(horizontal: 19.w),
              width: 353.w,
              height: 42.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '스트레스 지수',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '좋음',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 11.h),
            GestureDetector(
              onTap: () {
                renderPopUp(context);
              },
              child: Container(
                  decoration: baseDecoration,
                  padding: EdgeInsets.symmetric(horizontal: 19.w),
                  width: 353.w,
                  height: 42.h,
                  child: Row(
                    children: [
                      Text(
                        '로그아웃',
                        style: TextStyle(fontSize: 16.sp, color: MyColors.red1),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  renderPopUp(context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: MyColors.yellow11,
          contentPadding: EdgeInsets.symmetric(horizontal: 33.w),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 30.h),
              Text(
                '정말 로그아웃 하시겠습니까?',
                style: TextStyle(fontSize: 16.sp, color: Colors.black),
              ),
              SizedBox(height: 27.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(context);
                    },
                    child: Text(
                      '아니요',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (_) => const LoginScreen(),
                        ),
                        (Route<dynamic> route) => false,
                      );
                    },
                    child: Text(
                      '예',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
