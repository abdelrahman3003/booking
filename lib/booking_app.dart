import 'package:booking/features/workspace/presentation/controller/worksapce/workspace_cubit.dart';
import 'package:booking/features/workspace/presentation/view/workspaces_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingApp extends StatelessWidget {
  const BookingApp({super.key});

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
