import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkspaceItemRow extends StatelessWidget {
  const WorkspaceItemRow({super.key, required this.title, required this.value});
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$title : ",
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400),
        ),
        Text(
          value,
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
