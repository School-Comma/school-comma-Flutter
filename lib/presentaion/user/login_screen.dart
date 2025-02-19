import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_comma/common/components/custom_text_form_field.dart';
import 'package:school_comma/common/layout/default_layout.dart';
import 'package:school_comma/common/widgets/my_tab.dart';
import 'package:school_comma/main.dart';
import 'package:school_comma/presentaion/user/sign_up_screen.dart';

import '../../common/components/my_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 88.h,
            ),
            Text(
              '로그인',
              style: TextStyle(
                fontSize: 26.sp,
                color: Colors.black,
              ),
            ),
            Text(
              '회원가입 후 로그인해주세요!',
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 79.h,
            ),
            const CustomTextFormField(
              text: '이메일',
            ),
            SizedBox(
              height: 76.h,
            ),
            const CustomTextFormField(text: '비밀번호'),
            SizedBox(
              height: 400.h,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const MyTab(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(360.w, 62.h),
                backgroundColor: MyColors.yellow3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              child: Text(
                '로그인',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '아직 계정이 없으시다고요?',
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const SignUpScreen(),
                      ),
                    );
                  },
                  child: Text(
                    '회원가입하러가기',
                    style: TextStyle(fontSize: 13.sp, color: MyColors.yellow2),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
