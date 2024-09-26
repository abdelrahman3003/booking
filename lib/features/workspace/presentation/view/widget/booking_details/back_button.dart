import 'package:booking/booking_app.dart';
import 'package:booking/core/colors.dart';
import 'package:booking/core/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../controller/worksapce/workspace_cubit.dart';
import '../workspaces_view/app_button.dart';

class BackButtonCard extends StatelessWidget {
  const BackButtonCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      color: AppColors.purple200,
      title: "Back To Home",
      onPressed: () {
        context.pushAndRemoveUntil(const BookingApp());
        context.read<WorkspaceCubit>().close();
      },
    );
  }
}
