import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../controller/worksapce/workspace_cubit.dart';

class ChoosedateButton extends StatelessWidget {
  const ChoosedateButton({super.key});

  @override
  Widget build(BuildContext context) {
    String? date;
    return BlocBuilder<WorkspaceCubit, WorkspaceState>(
      builder: (context, state) {
        if (state is WorkspaceDateSuccess) {
          date = state.date;
        }
        return TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please select a valid option";
            }
            return null;
          },
          controller: TextEditingController(text: date),
          decoration: const InputDecoration(
              hintText: "Choose date",
              suffixIcon: Icon(Icons.date_range),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)))),
          onTap: () {
            context.read<WorkspaceCubit>().pickDate(context);
            context.read<WorkspaceCubit>().dateAndTime();
          },
        );
      },
    );
  }
}
