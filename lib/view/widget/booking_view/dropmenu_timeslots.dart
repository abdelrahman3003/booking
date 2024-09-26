import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../controller/worksapce/workspace_cubit.dart';

class DropmenuTimeslots extends StatefulWidget {
  const DropmenuTimeslots({super.key});

  @override
  State<DropmenuTimeslots> createState() => _DropmenuTimeslotsState();
}

class _DropmenuTimeslotsState extends State<DropmenuTimeslots> {
  @override
  Widget build(BuildContext context) {
    var cubit = context.read<WorkspaceCubit>();

    return DropdownButton<String>(
      hint: Text(
        cubit.timeSlot ?? 'Choose Time Slot',
      ),
      items: cubit.timeSlots.map((String slot) {
        return DropdownMenuItem<String>(
          value: slot,
          child: Text(slot),
        );
      }).toList(),
      onChanged: (newValue) {
        setState(() {
          cubit.timeSlot = newValue;
        });
      },
    );
  }
}
