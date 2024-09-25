part of 'workspace_cubit.dart';

@immutable
sealed class WorkspaceState {}

final class WorkspaceInitial extends WorkspaceState {}

final class WorkspaceLoading extends WorkspaceState {}

final class WorkspaceSuccess extends WorkspaceState {
  final List<WorkspaceModel> workspaceList;

  WorkspaceSuccess({required this.workspaceList});
}

final class WorkspaceError extends WorkspaceState {}
