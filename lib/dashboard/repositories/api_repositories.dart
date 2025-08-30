import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:red/api/api_service.dart';
import 'package:red/dashboard/model/dashboard_model.dart';

class ApiRepositories {
  final Dio dio = Dio();

  Future<List<Location>> getDashboardData() async {
    try {
      final response = await dio.get(
        '${ApiService().baseUrl}/api/v1/manager/locations/cards',
      );
      final List<Location> data = (response.data['data'] as List)
          .map((e) => Location.fromJson(e))
          .toList();
      print(response.data);
      return data;
    } catch (e) {
      return throw Exception('Error');
    }
  }
}
