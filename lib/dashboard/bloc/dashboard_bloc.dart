// bloc/dashboard/dashboard_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:red/api/api_service.dart';
import 'package:red/dashboard/repositories/api_repositories.dart';
import 'dashboard_event.dart';
import 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final ApiRepositories apiService;

  DashboardBloc(this.apiService) : super(DashboardInitial()) {
    on<LoadDashboard>((event, emit) async {
      emit(DashboardLoading());
      try {
        final data = await apiService.getDashboardData();
        emit(DashboardLoaded(data));
      } catch (e) {
        emit(DashboardError(e.toString()));
      }
    });
  }
}