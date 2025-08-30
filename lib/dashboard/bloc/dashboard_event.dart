
import 'package:red/dashboard/model/dashboard_model.dart';

class DashboardEvent {}

class LoadDashboard extends DashboardEvent {
final Location data;
  LoadDashboard(this.data);

}