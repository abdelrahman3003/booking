import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../controller/worksapce/workspace_cubit.dart';
import 'workspace_list_item.dart';

class WorkspaceViewBody extends StatelessWidget {
  const WorkspaceViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkspaceCubit, WorkspaceState>(
        buildWhen: (previous, current) =>
            current is WorkspaceSuccess || current is WorkspaceLoading,
        builder: (context, state) {
          if (state is WorkspaceSuccess) {
            return WorkspaceListItem(workspaceList: state.workspaceList);
          }
          if (state is WorkspaceLoading) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return const SizedBox.shrink();
          }
        });
  }
}
