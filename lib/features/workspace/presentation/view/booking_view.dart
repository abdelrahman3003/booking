import 'package:booking/features/workspace/presentation/view/widget/booking_view/booking_appbar.dart';
import 'package:booking/features/workspace/presentation/view/widget/booking_view/booking_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class BookingView extends StatelessWidget {
  const BookingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 50.h),
          child: const BookingAppbar(),
        ),
        body: const BookinViewgBody());
  }
}
