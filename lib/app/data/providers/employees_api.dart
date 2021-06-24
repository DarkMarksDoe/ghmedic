import 'dart:convert';

import 'package:ghmedic/app/data/model/employee.dart';
import 'package:ghmedic/app/utils/dio_client.dart';
import 'package:get/get.dart';

class EmployeesAPI {
  final DioClient _dioClient = Get.find<DioClient>();

  Future<List<Employee>> getEmployees() async {
    final response = await _dioClient.get(queryParameters: {});
    final json = jsonDecode(response);
    List<Employee> result = [];
    json.forEach((employee) => result.add(Employee.fromJson(employee)));
    return result;
  }
}
