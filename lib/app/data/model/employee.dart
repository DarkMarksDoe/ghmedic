class Employee {
  Employee({
    required this.id,
    required this.name,
    required this.state,
    required this.country,
    required this.dateAccess,
    required this.department,
    required this.orientation,
  });

  final int id;
  final int state;
  final String name;
  final int country;
  final String department;
  final String orientation;
  final DateTime dateAccess;

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      id: int.parse(json['PKEmpleado'] ?? '0'),
      name: json['Nombre'] ?? '',
      state: int.parse(json['Pais'] ?? '0'),
      country: int.parse(json['Pais'] ?? '0'),
      dateAccess: DateTime.tryParse(json['FechaIngreso']) ?? DateTime.now(),
      department: json['Departamento'] ?? '',
      orientation: json['Sexo'] ?? '',
    );
  }
}
