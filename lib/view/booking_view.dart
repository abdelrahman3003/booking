import 'package:booking/view/widget/booking_view/booking_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/workspaces_view/app_appbar.dart';

class BookingView extends StatefulWidget {
  const BookingView({super.key});

  @override
  State<BookingView> createState() => _BookingViewState();
}

class _BookingViewState extends State<BookingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(double.infinity, 50.h),
            child: const MyAppBar(title: "Booking")),
        body: const BookinViewgBody());
  }
}
