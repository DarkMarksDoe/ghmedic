import 'package:get/get.dart';
import 'package:ghmedic/app/modules/employee/employee_controller.dart';

class EmployeeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmployeeController());
  }
}
