import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../controller/worksapce/workspace_cubit.dart';

class ChoosedateButton extends StatefulWidget {
  const ChoosedateButton({super.key});

  @override
  State<ChoosedateButton> createState() => _ChoosedateButtonState();
}

class _ChoosedateButtonState extends State<ChoosedateButton> {
  @override
  Widget build(BuildContext context) {
    var cubit = context.read<WorkspaceCubit>();

    return ElevatedButton(
      child: Text(cubit.pickedDate != null
          ? cubit.pickedDate.toString()
          : 'Choose Date'),
      onPressed: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime(2101),
        );
        if (pickedDate != null) {
          setState(() {
            cubit.pickedDate =
                "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
          });
        }
      },
    );
  }
}
