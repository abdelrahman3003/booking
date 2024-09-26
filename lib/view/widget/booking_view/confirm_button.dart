import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../controller/worksapce/workspace_cubit.dart';
import '../../booking_details.dart';
import '../workspaces_view/app_button.dart';

class ConfirmButton extends StatefulWidget {
  const ConfirmButton({super.key});

  @override
  State<ConfirmButton> createState() => _ConfirmButtonState();
}

class _ConfirmButtonState extends State<ConfirmButton> {
  @override
  Widget build(BuildContext context) {
    bool isDateTime = false;
    return BlocBuilder<WorkspaceCubit, WorkspaceState>(
      builder: (context, state) {
        if (state is WorkspaceDateTimeSuccess) {
          isDateTime = state.isDateTime;
        }
        return AppButton(
          title: "Confirm",
          color: isDateTime ? Colors.deepPurpleAccent.shade200 : Colors.grey,
          onPressed: () {
            if (isDateTime) {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const BookingDetails(),
                ),
                (route) => false,
              );
            }
          },
        );
      },
    );
  }
}
