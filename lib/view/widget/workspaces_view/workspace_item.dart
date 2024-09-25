import 'package:booking/controller/worksapce/workspace_cubit.dart';
import 'package:booking/data/model/workspace_model.dart';
import 'package:booking/view/booking_view.dart';
import 'package:booking/view/widget/workspaces_view/workspace_item_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkspaceItem extends StatelessWidget {
  const WorkspaceItem({
    super.key,
    required this.workspaceModel,
  });
  final WorkspaceModel workspaceModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<WorkspaceCubit>().workspaceModel = workspaceModel;
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const BookingView(),
            ));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 14.h),
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color.fromARGB(255, 222, 213, 213)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              workspaceModel.name,
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 3.h),
            WorkspaceItemRow(title: "location", value: workspaceModel.location),
            WorkspaceItemRow(
                title: "Capcity", value: "${workspaceModel.capacity}"),
            WorkspaceItemRow(
                title: "Amenities",
                value: workspaceModel.amenities.join(' , ')),
          ],
        ),
      ),
    );
  }
}
