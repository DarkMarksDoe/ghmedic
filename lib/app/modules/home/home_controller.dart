import 'package:get/get.dart';
import 'package:ghmedic/app/data/model/employee.dart';
import 'package:ghmedic/app/data/repositories/employees_repository.dart';

class HomeController extends GetxController {

  // Repositories
  final EmployeesRepository _employeesRepository = Get.find<EmployeesRepository>();

  // Employees List
  List<Employee> employees = [];

  // Booleans
  bool isLoading = true;

  @override
  void onInit() async{
    super.onInit();
    await fetchEmployees();
  }

  Future fetchEmployees() async{
    employees = await _employeesRepository.getEmployeesList();
    isLoading = false;
    update();
  }
}
