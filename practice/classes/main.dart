import 'classes.dart';

void main() {
  Employee firstEmployee =
      Employee(position: "seller", name: "Jack", email: "jack@gmail.com");
  firstEmployee.displayInfo();

  Employee secondEmployee =
      Employee(position: "cashier", name: "John", email: "john@gmail.com");
  secondEmployee.displayInfo();

  Manager manager = Manager(name: "Jaime", email: "jaime@gmail.com");
  manager.displayInfo();

  manager.addEmployee(firstEmployee);
  manager.addEmployee(secondEmployee);
  manager.displayEmployeeList();
}
