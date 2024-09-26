part of 'workspace_cubit.dart';

@immutable
sealed class WorkspaceState {}

final class WorkspaceInitial extends WorkspaceState {}

final class WorkspaceLoading extends WorkspaceState {}

final class WorkspaceSuccess extends WorkspaceState {
  final List<WorkspaceModel> workspaceList;

  WorkspaceSuccess({required this.workspaceList});
}

final class WorkspaceDateSuccess extends WorkspaceState {
  final String? date;
  WorkspaceDateSuccess({required this.date});
}

final class WorkspaceTimeSuccess extends WorkspaceState {
  final String? time;

  WorkspaceTimeSuccess({required this.time});
}
final class WorkspaceDateTimeSuccess extends WorkspaceState {
  final bool isDateTime;

  WorkspaceDateTimeSuccess({required this.isDateTime});
}
final class WorkspaceError extends WorkspaceState {}
