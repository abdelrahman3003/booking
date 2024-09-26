import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../booking_app.dart';

class BookingAppbar extends StatelessWidget {
  const BookingAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      const BookingApp()), // The new page to navigate to
              (Route<dynamic> route) => false, // Remove all previous routes
            );
          },
          icon: const Icon(Icons.arrow_back)),
      title: Text(
        "Booking",
        style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600),
      ),
      centerTitle: true,
    );
  }
}
