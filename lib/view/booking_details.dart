import 'package:booking/view/widget/booking_details/back_button.dart';
import 'package:booking/view/widget/booking_details/booking_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/workspaces_view/app_appbar.dart';

class BookingDetails extends StatelessWidget {
  const BookingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 50.h),
          child: const MyAppBar(title: "Booking")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BookingCard(),
            SizedBox(height: 24.h),
            const Center(child: BackButtonCard()),
          ],
        ),
      ),
    );
  }
}
