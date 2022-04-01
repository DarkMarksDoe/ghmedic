import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:ghmedic/app/data/model/employee.dart';
import 'package:ghmedic/app/data/providers/employees_api.dart';
import 'package:ghmedic/app/data/repositories/employees_repository.dart';
import 'package:ghmedic/app/modules/home/home_controller.dart';
import 'package:ghmedic/app/utils/dio_client.dart';
import 'package:mockito/mockito.dart';

class MockHomeController extends Mock implements HomeController {}

void main() async {
  Get.put(DioClient('', null));
  Get.put(EmployeesAPI());
  Get.put(EmployeesRepository());
  Get.put(HomeController());

  final listOfEmployees = [
    Employee(
        id: 1,
        name: 'name1',
        state: 1,
        country: 2,
        dateAccess: DateTime.now(),
        department: 'IT',
        orientation: 'idk'),
    Employee(
        id: 1,
        name: 'name1',
        state: 1,
        country: 2,
        dateAccess: DateTime.now(),
        department: 'IT',
        orientation: 'idk'),
  ];

  group('Default variables Home Controller', () {
    test('Default isLoading', () {
      final controller = HomeController();
      expect(controller.isLoading, true);
    });

    test('Default employees are empty', () {
      final controller = HomeController();
      expect(controller.employees.length, 0);
    });
  });

  group('When fetch employees', () {
    test('Default employees are empty', () async {
      final controller = HomeController();
      when(controller.fetchEmployees().then((value) => listOfEmployees));
      expect(controller.employees.length, 2);
    });
  });
}
