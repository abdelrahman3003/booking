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
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => ConfirmationScreen(
                  //       workspaceName: widget.workspaceName,
                  //       date: selectedDate!,
                  //       timeSlot: selectedTimeSlot!,
                  //     ),
                  //   ),
                  // );
                },
                child: const Text('Confirm Booking'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ConfirmationScreen extends StatelessWidget {
  final String workspaceName;
  final DateTime date;
  final String timeSlot;

  const ConfirmationScreen(
      {super.key,
      required this.workspaceName,
      required this.date,
      required this.timeSlot});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Booking Confirmation')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Workspace: $workspaceName',
                style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            Text('Date: ${date.toLocal()}'.split(' ')[0],
                style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            Text('Time Slot: $timeSlot', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                child: const Text('Back to Home'),
                onPressed: () {
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                },
              ),
            ),
          ],
        ),
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [

        //     // ElevatedButton(
        //     //   child: const Text('Choose Date'),
        //     //   onPressed: () async {
        //     //     DateTime? pickedDate = await showDatePicker(
        //     //       context: context,
        //     //       initialDate: DateTime.now(),
        //     //       firstDate: DateTime.now(),
        //     //       lastDate: DateTime(2101),
        //     //     );
        //     //     if (pickedDate != null) {}
        //     //   },
        //     // ),
        //     // const SizedBox(height: 20),
        //     // DropdownButton<String>(
        //     //   hint: const Text('Choose Time Slot'),
        //     //   items: timeSlots.map((String slot) {
        //     //     return DropdownMenuItem<String>(
        //     //       value: slot,
        //     //       child: Text(slot),
        //     //     );
        //     //   }).toList(),
        //     //   onChanged: (newValue) {},
        //     // ),
        //     // const Spacer(),
        //     // Center(
        //     //   child: ElevatedButton(
        //     //     onPressed: () {
        //     //       // Navigator.push(
        //     //       //   context,
        //     //       //   MaterialPageRoute(
        //     //       //     builder: (context) => ConfirmationScreen(
        //     //       //       workspaceName: widget.workspaceName,
        //     //       //       date: selectedDate!,
        //     //       //       timeSlot: selectedTimeSlot!,
        //     //       //     ),
        //     //       //   ),
        //     //       // );
        //     //     },
        //     //     child: const Text('Confirm Booking'),
        //     //   ),
        //     // ),
        //   ],
        // ),
      ),
    );
  }
}
