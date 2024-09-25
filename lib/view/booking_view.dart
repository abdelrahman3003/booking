import 'package:booking/controller/worksapce/workspace_cubit.dart';
import 'package:booking/view/confirm_booking_view.dart';
import 'package:booking/view/widget/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingView extends StatefulWidget {
  const BookingView({super.key});

  @override
  State<BookingView> createState() => _BookingViewState();
}

class _BookingViewState extends State<BookingView> {
  @override
  Widget build(BuildContext context) {
    var cubit = context.read<WorkspaceCubit>();
    final List<String> timeSlots = [
      '9:00 AM - 11:00 AM',
      '12:00 PM - 2:00 PM',
      '3:00 PM - 5:00 PM'
    ];

    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Booking",
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600),
          ),
          centerTitle: true),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Select Date:', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            ElevatedButton(
              child: Text(cubit.pickedDate != null
                  ? cubit.pickedDate.toString()
                  : 'Choose Date'),
              onPressed: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2101),
                );
                if (pickedDate != null) {
                  setState(() {
                    cubit.pickedDate =
                        "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                  });
                }
              },
            ),
            const SizedBox(height: 20),
            const Text('Select Time Slot:', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            DropdownButton<String>(
              hint: Text(
                cubit.timeSlot ?? 'Choose Time Slot',
              ),
              items: timeSlots.map((String slot) {
                return DropdownMenuItem<String>(
                  value: slot,
                  child: Text(slot),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  cubit.timeSlot = newValue;
                });
              },
            ),
            SizedBox(height: 30.h),
            Center(
                child: AppButton(
              title: "Confirm",
              color: cubit.pickedDate == null || cubit.timeSlot == null
                  ? Colors.grey
                  : Colors.green,
              onPressed: () {
                if (cubit.pickedDate != null || cubit.timeSlot != null) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ConfirmBookingView(),
                      ));
                }
              },
            )),
          ],
        ),
      ),
    );
  }
}
