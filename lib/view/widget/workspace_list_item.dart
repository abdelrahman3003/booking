import 'package:booking/data/model/workspace_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'workspace_item.dart';

class WorkspaceListItem extends StatelessWidget {
  const WorkspaceListItem({super.key, required this.workspaceList});
  final List<WorkspaceModel> workspaceList;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: ListView.builder(
            itemCount: workspaceList.length,
            itemBuilder: (context, index) {
              return WorkspaceItem(
                  name: workspaceList[index].name,
                  location: workspaceList[index].location,
                  capacity: workspaceList[index].capacity,
                  amentities: workspaceList[index].amenities.join(' , '));
            }));
  }
}
