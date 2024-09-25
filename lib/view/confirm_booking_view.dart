import 'package:booking/booking.dart';
import 'package:booking/controller/worksapce/workspace_cubit.dart';
import 'package:booking/view/widget/app_button.dart';
import 'package:booking/view/workspaces_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/workspace_item_row.dart';

class ConfirmBookingView extends StatelessWidget {
  const ConfirmBookingView({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<WorkspaceCubit>();
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
              child: Column(
                children: [
                  WorkspaceItemRow(
                      title: "Worksapce", value: cubit.workspaceModel!.name),
                  WorkspaceItemRow(title: "Date", value: cubit.pickedDate!),
                  WorkspaceItemRow(title: "Time", value: cubit.timeSlot!),
                ],
              ),
            ),
            SizedBox(height: 24.h),
            Center(
                child: AppButton(
              title: "Back To Home",
              color: const Color.fromARGB(255, 86, 76, 76),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const WorkspacesView()), // The new page to navigate to
                  (Route<dynamic> route) => false, // Remove all previous routes
                );
                cubit.close();
              },
            )),
          ],
        ),
      ),
    );
  }
}
