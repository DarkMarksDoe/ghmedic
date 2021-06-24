import 'package:get/get.dart';
import 'package:ghmedic/app/data/providers/employees_api.dart';
import 'package:ghmedic/app/data/repositories/employees_repository.dart';
import 'package:ghmedic/app/utils/constants.dart';
import 'package:ghmedic/app/utils/dio_client.dart';
import 'package:dio/dio.dart';

class DependencyInjection {
  static void init() async {
    // Http client
    Get.put<DioClient>(DioClient(apiUrl, Dio()));

    // Providers
    Get.put<EmployeesAPI>(EmployeesAPI());

    // Repositories
    Get.put<EmployeesRepository>(EmployeesRepository());


  }
}
