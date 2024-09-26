import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../controller/worksapce/workspace_cubit.dart';
import '../workspaces_view/workspace_item_row.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<WorkspaceCubit>();

    return Container(
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
    );
  }
}
