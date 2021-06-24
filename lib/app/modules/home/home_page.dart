import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghmedic/app/modules/home/home_controller.dart';
import 'package:ghmedic/app/modules/home/widgets/employee_item.dart';
import 'package:ghmedic/app/routes/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          color: Colors.white,
          child: Builder(
            builder: (context) {
              if (controller.isLoading) {
                return Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Theme.of(context).colorScheme.primary,
                    ),
                    backgroundColor: Colors.orange,
                  ),
                );
              } else {
                if (controller.employees.length > 0) {
                  return ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.employees.length,
                    itemBuilder: (context, index) {
                      final employee = controller.employees[index];
                      return GestureDetector(
                        onLongPress: () {},
                        onTap: () async {
                          Get.toNamed(
                            AppRoutes.employee,
                            arguments: {
                              'trip': controller.employees[index],
                              'index': index,
                            },
                          );
                        },
                        child: EmployeeItem(
                          employee: employee,
                        ),
                      );
                    },
                  );
                } else {
                  return Center(
                    child: Container(
                      child: Text('There are no employees.'),
                    ),
                  );
                }
              }
            },
          ),
        ),
      ),
    );
  }
}
