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
    var cubit = context.read<WorkspaceCubit>();

    return AppButton(
      title: "Confirm",
      color: cubit.pickedDate == null || cubit.timeSlot == null
          ? Colors.grey
          : Colors.green,
      onPressed: () {
        if (cubit.pickedDate != null || cubit.timeSlot != null) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BookingDetails(),
              ));
        }
      },
    );
  }
}
