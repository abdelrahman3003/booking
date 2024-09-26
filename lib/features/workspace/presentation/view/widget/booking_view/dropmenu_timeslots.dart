import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../controller/worksapce/workspace_cubit.dart';

class DropmenuTimeslots extends StatelessWidget {
  const DropmenuTimeslots({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<WorkspaceCubit>();
    String? time;
    return BlocBuilder<WorkspaceCubit, WorkspaceState>(
      buildWhen: (previous, current) => current is WorkspaceTimeSuccess,
      builder: (context, state) {
        if (state is WorkspaceTimeSuccess) {
          time = state.time;
        }
        return DropdownButtonFormField<String>(
          hint: Text(time ?? 'Choose Time Slot'),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please select a valid option";
            }
            return null;
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
          items: cubit.timeSlots.map((String slot) {
            return DropdownMenuItem<String>(
              value: slot,
              child: Text(slot),
            );
          }).toList(),
          onChanged: (newValue) {
            cubit.chooseTime(newValue);
            cubit.dateAndTime();
          },
        );
      },
    );
  }
}
