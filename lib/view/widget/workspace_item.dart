import 'dart:math';

import 'package:booking/view/widget/workspace_item_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkspaceItem extends StatelessWidget {
  const WorkspaceItem(
      {super.key,
      required this.name,
      required this.location,
      required this.capacity,
      required this.amentities});
  final String name;
  final String location;
  final int capacity;
  final String amentities;
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
            name,
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 3.h),
          WorkspaceItemRow(title: "location", value: location),
          WorkspaceItemRow(title: "Capcity", value: "$capacity"),
          WorkspaceItemRow(title: "Amenities", value: amentities),
        ],
      ),
    );
  }
}
