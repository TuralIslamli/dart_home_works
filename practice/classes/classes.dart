// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class Person {
  String name;
  String email;
  Person({
    required this.name,
    required this.email,
  });

  void displayInfo();
}

class Employee extends Person {
  String position;
  Employee({
    required this.position,
    required super.name,
    required super.email,
  });
  @override
  void displayInfo() {
    print("Name: $name Email: $email Position: $position");
  }
}

class Manager extends Employee {
  List<Employee> employeeList = [];

  Manager({required super.name, required super.email})
      : super(position: 'Manager');

  void addEmployee(Employee employee) {
    employeeList.add(employee);
  }

  void displayEmployeeList() {
    print("Employees");
    for (var element in employeeList) {
      print(
          "Name: ${element.name} Email: ${element.email} Position: ${element.position}");
    }
  }
}
