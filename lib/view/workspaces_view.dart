import 'package:booking/controller/worksapce/workspace_cubit.dart';
import 'package:booking/view/widget/workspace_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkspacesView extends StatelessWidget {
  const WorkspacesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Workspaces",
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<WorkspaceCubit, WorkspaceState>(
            builder: (context, state) {
          if (state is WorkspaceSuccess) {
            return WorkspaceListItem(workspaceList: state.workspaceList);
          }
          if (state is WorkspaceLoading) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return const SizedBox.shrink();
          }
        }));
  }
}
