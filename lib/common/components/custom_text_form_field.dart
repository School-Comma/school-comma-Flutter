import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_comma/common/components/my_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;

  const CustomTextFormField({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final baseBorder = UnderlineInputBorder(
      borderSide: BorderSide(
        color: MyColors.gray100,
        width: 2.h,
      ),
    );

    return TextFormField(
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(
          fontSize: 20.sp,
          color: MyColors.gray100
        ),
        border: baseBorder,
        focusedBorder: baseBorder
      ),
    );
  }
}
