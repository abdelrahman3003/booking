import 'package:booking/view/widget/workspace_item_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkspaceItem extends StatelessWidget {
  const WorkspaceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 14.h),
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color.fromARGB(255, 222, 213, 213)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Workspace 1",
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 3.h),
          const WorkspaceItemRow(title: "location", value: "Cairo"),
          const WorkspaceItemRow(title: "Capcity", value: "24"),
          const WorkspaceItemRow(
              title: "Amenities", value: "Wi-Fi , playstaion"),
        ],
      ),
    );
  }
}
