import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.green),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: WidgetStateProperty.all(Size(double.infinity, 50.h)),
            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)))),
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 16.sp),
        ));
  }
}
