import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../controller/worksapce/workspace_cubit.dart';
import '../../workspaces_view.dart';
import '../workspaces_view/app_button.dart';

class BackButtonCard extends StatelessWidget {
  const BackButtonCard({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<WorkspaceCubit>();

    return AppButton(
      title: "Back To Home",
      color: const Color.fromARGB(255, 86, 76, 76),
      onPressed: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const WorkspacesView()), // The new page to navigate to
          (Route<dynamic> route) => false, // Remove all previous routes
        );
        cubit.close();
      },
    );
  }
}
