import 'package:ghmedic/app/data/model/employee.dart';
import 'package:ghmedic/app/data/providers/employees_api.dart';
import 'package:get/get.dart';

class EmployeesRepository {
  final EmployeesAPI _api = Get.find<EmployeesAPI>();

  Future<List<Employee>> getEmployeesList() {
    return _api.getEmployees();
  }
}
