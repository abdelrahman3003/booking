import 'package:booking/view/widget/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/workspace_item_row.dart';

class ConfirmBookingView extends StatelessWidget {
  const ConfirmBookingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Confirm Booking",
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600),
          ),
          centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
              margin: const EdgeInsets.symmetric(vertical: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color.fromARGB(255, 222, 213, 213)),
              child: const Column(
                children: [
                  WorkspaceItemRow(title: "Worksapce", value: "Workspace 1"),
                  WorkspaceItemRow(title: "Date", value: "20/9/2024"),
                  WorkspaceItemRow(title: "Time", value: "9 pm : 12 pm"),
                ],
              ),
            ),
            SizedBox(height: 24.h),
            const Center(child: AppButton(title: "Booking")),
          ],
        ),
      ),
    );
  }
}
