import 'package:booking/view/booking_view.dart';
import 'package:booking/view/workspaces_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view/confirm_booking_view.dart';

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 821),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return const MaterialApp(
              debugShowCheckedModeBanner: false, home: ConfirmBookingView());
        });
  }
}
