import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../data/data_source/workspace_data.dart';
import '../../data/model/workspace_model.dart';

part 'workspace_state.dart';

class WorkspaceCubit extends Cubit<WorkspaceState> {
  WorkspaceCubit() : super(WorkspaceInitial()) {
    fetchData();
  }
  List<WorkspaceModel> workspaceList = [];
  WorkspaceModel? workspaceModel;
  String? dateSelcted;
  String? timeSlot;
  final formkey = GlobalKey<FormState>();
  final List<String> timeSlots = [
    '9:00 AM - 11:00 AM',
    '12:00 PM - 2:00 PM',
    '3:00 PM - 5:00 PM'
  ];
  fetchData() async {
    emit(WorkspaceLoading());
    await Future.delayed(const Duration(seconds: 2));
    for (var i = 0; i < WorkspaceData.locations.length; i++) {
      workspaceList.add(WorkspaceModel(
          name: "Workspace ${i + 1}",
          location: WorkspaceData.locations[i],
          capacity: i + 3,
          amenities: WorkspaceData.amenities));
    }
    emit(WorkspaceSuccess(workspaceList: workspaceList));
  }

  pickDate(BuildContext context) async {
    String? date;
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      date = "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
    }
    dateSelcted = date;
    emit(WorkspaceDateSuccess(date: date));
  }

  chooseTime(String? value) {
    print("===================$value");

    timeSlot = value;
    emit(WorkspaceTimeSuccess(time: value));
  }

  dateAndTime() {
    if (dateSelcted != null && timeSlot != null) {
      emit(WorkspaceDateTimeSuccess(isDateTime: true));
    } else {
      emit(WorkspaceDateTimeSuccess(isDateTime: false));
    }
  }

  @override
  Future<void> close() {
    dateSelcted = null;
    timeSlot = null;
    workspaceModel = null;
    return super.close();
  }
}
