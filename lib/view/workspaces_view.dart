import 'package:booking/view/widget/workspace_item.dart';
import 'package:flutter/material.dart';
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
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => const WorkspaceItem(),
          )),
    );
  }
}
