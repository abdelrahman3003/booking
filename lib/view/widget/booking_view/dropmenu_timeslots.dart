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
      builder: (context, state) {
        if (state is WorkspaceTimeSuccess) {
          time = state.time;
        }
        return DropdownButton<String>(
          hint: Text(
            time ?? 'Choose Time Slot',
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
