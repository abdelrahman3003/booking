import 'package:booking/booking_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../controller/worksapce/workspace_cubit.dart';
import '../workspaces_view/app_button.dart';

class BackButtonCard extends StatelessWidget {
  const BackButtonCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      title: "Back To Home",
      color: Colors.deepPurpleAccent.shade200,
      onPressed: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const BookingApp()), // The new page to navigate to
          (Route<dynamic> route) => false, // Remove all previous routes
        );
        context.read<WorkspaceCubit>().close();
      },
    );
  }
}
