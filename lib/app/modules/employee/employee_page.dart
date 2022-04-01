import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghmedic/app/modules/employee/employee_controller.dart';
import 'package:ghmedic/app/widgets/generic_text_form.dart';

class EmployeePage extends StatelessWidget {
  const EmployeePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EmployeeController>(
      builder: (controller) => Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            color: Colors.white,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      'First name',
                    ),
                  ),
                ),
                GenericTextForm(
                  controller: controller.firstNameController,
                  hintText: 'Type your first name',
                  maxLength: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
