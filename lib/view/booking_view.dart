import 'package:booking/view/widget/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingView extends StatelessWidget {
  const BookingView({super.key});

  @override
  Widget build(BuildContext context) {
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
              child: const Text('Choose Date'),
              onPressed: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2101),
                );
                if (pickedDate != null) {}
              },
            ),
            const SizedBox(height: 20),
            const Text('Select Time Slot:', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            DropdownButton<String>(
              hint: const Text('Choose Time Slot'),
              items: timeSlots.map((String slot) {
                return DropdownMenuItem<String>(
                  value: slot,
                  child: Text(slot),
                );
              }).toList(),
              onChanged: (newValue) {},
            ),
            SizedBox(height: 30.h),
            const Center(child: AppButton(title: "Confirm")),
          ],
        ),
      ),
    );
  }
}
