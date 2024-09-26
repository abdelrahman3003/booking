import 'package:booking/view/widget/workspaces_view/app_appbar.dart';
import 'package:booking/view/widget/workspaces_view/workspace_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkspacesView extends StatelessWidget {
  const WorkspacesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(double.infinity, 50.h),
            child: const MyAppBar(title: "WorkSpaces")),
        body: const WorkspaceViewBody());
  }
}
