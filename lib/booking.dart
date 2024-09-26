import 'package:booking/controller/worksapce/workspace_cubit.dart';
import 'package:booking/view/workspaces_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 821),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return BlocProvider(
            create: (context) => WorkspaceCubit(),
            child: const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: WorkspacesView(),
            ),
          );
        });
  }
}
