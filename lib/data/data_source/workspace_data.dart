import 'package:booking/data/model/workspace_model.dart';

class WorkspaceData {
  static late List<WorkspaceModel> workspaceDataList;

  List<String> locations = [
    'Maadi',
    'Zamalek',
    'Heliopolis',
    'Downtown',
    'Nasr City',
    'New Cairo',
    'Garden City',
    '6th of October',
    'Sheikh Zayed',
    'Mohandessin',
  ];
  List<String> amenities = [
    'Wi-Fi',
    'Projector',
    'Whiteboard',
  ];
  fetchData() {
    for (var i = 0; i < locations.length; i++) {
      workspaceDataList.add(WorkspaceModel(
          name: "Workspace $i",
          location: locations[i],
          capacity: i + 3,
          amenities: amenities));
    }
  }
}
