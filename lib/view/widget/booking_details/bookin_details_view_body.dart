import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'back_button.dart';
import 'booking_card.dart';

class BookinDetailsViewBody extends StatelessWidget {
  const BookinDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BookingCard(),
          SizedBox(height: 24.h),
          const Center(child: BackButtonCard()),
        ],
      ),
    );
  }
}
