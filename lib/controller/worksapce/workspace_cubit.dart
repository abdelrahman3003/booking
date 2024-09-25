import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/data_source/workspace_data.dart';
import '../../data/model/workspace_model.dart';

part 'workspace_state.dart';

class WorkspaceCubit extends Cubit<WorkspaceState> {
  WorkspaceCubit() : super(WorkspaceInitial()) {
    fetchData();
  }
  List<WorkspaceModel> workspaceList = [];
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
    print("=================== lemght  ${workspaceList.length}");
    print("=================== nameeee  ${workspaceList[0].name}");
    emit(WorkspaceSuccess(workspaceList: workspaceList));
  }
}
