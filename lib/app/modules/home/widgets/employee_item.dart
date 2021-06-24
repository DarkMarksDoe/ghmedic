import 'package:flutter/material.dart';
import 'package:ghmedic/app/data/model/employee.dart';

class EmployeeItem extends StatelessWidget {
  const EmployeeItem({Key? key, required this.employee}) : super(key: key);
  final Employee employee;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        height: 100,
        child: Center(
          child: ListTile(
            title: Text(
              employee.name != '' ? employee.name : 'No name available',
              style: TextStyle(
                color: employee.name != '' ? Colors.black : Colors.grey,
                fontStyle: employee.name != '' ? FontStyle.normal : FontStyle.italic,
              ),
            ),
            subtitle: Text(employee.department),
            leading: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.blue,
              ),
              child: Icon(
                Icons.person,
                color: Colors.orange.shade200,
                size: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
