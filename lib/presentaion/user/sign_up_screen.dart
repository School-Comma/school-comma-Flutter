import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_comma/common/components/custom_text_form_field.dart';
import 'package:school_comma/common/components/my_images.dart';
import 'package:school_comma/common/layout/default_layout.dart';

import '../../common/components/my_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 78.h,
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Image.asset(
                MyImages.back,
                width: 32.w,
                height: 32.h,
              ),
            ),
            SizedBox(height: 100.h,),
            const CustomTextFormField(text: '이메일'),
            SizedBox(height: 77.h,),
            const CustomTextFormField(text: '아이디'),
            SizedBox(height: 77.h,),
            const CustomTextFormField(text: '비밀번호'),
            SizedBox(height: 77.h,),

            SizedBox(height: 195.h,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(context);
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(360.w, 62.h),
                backgroundColor: MyColors.yellow3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              child: Text(
                '가입하기',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
