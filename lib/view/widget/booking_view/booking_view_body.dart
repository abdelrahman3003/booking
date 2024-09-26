import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'choosedate_button.dart';
import 'confirm_button.dart';
import 'dropmenu_timeslots.dart';

class BookinViewgBody extends StatelessWidget {
  const BookinViewgBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Select Date:', style: TextStyle(fontSize: 18)),
          const SizedBox(height: 10),
          const ChoosedateButton(),
          const SizedBox(height: 20),
          const Text('Select Time Slot:', style: TextStyle(fontSize: 18)),
          const SizedBox(height: 10),
          const DropmenuTimeslots(),
          SizedBox(height: 30.h),
          const ConfirmButton()
        ],
      ),
    );
  }
}
