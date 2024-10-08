import 'package:booking/features/workspace/presentation/view/widget/booking_details/bookin_details_view_body.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/workspaces_view/app_appbar.dart';

class BookingDetailsView extends StatelessWidget {
  const BookingDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(double.infinity, 50.h),
            child: const MyAppBar(title: "Booking")),
        body: const BookinDetailsViewBody());
  }
}
