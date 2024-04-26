// Enum untuk jenis kelamin
enum Gender { male, female }

// Interface untuk menghitung gaji
abstract class Payable {
  double calculateSalary();
}

// Kelas abstrak sebagai parent class
abstract class Employee {
  String name;
  int age;
  Gender gender;

  // Konstruktor
  Employee(this.name, this.age, this.gender);

  // Metode untuk menampilkan informasi karyawan
  void displayInfo() {
    print('Name: $name, Age: $age, Gender: ${gender.toString().split('.').last}');
  }

  // Metode abstrak yang akan dioverride oleh subclass
  void doWork();
}

// Kelas turunan dari Employee, menggunakan extends
class Manager extends Employee implements Payable {
  double salary;

  // Konstruktor
  Manager(String name, int age, Gender gender, this.salary)
      : super(name, age, gender);

  // Implementasi metode calculateSalary dari Payable interface
  @override
  double calculateSalary() {
    return salary;
  }

  // Override metode doWork dari parent class
  @override
  void doWork() {
    print('Manager $name is managing tasks.');
  }
}

// Kelas turunan dari Employee, menggunakan extends
class Developer extends Employee implements Payable {
  double hourlyRate;
  int hoursWorked;

  // Konstruktor
  Developer(String name, int age, Gender gender, this.hourlyRate, this.hoursWorked)
      : super(name, age, gender);

  // Implementasi metode calculateSalary dari Payable interface
  @override
  double calculateSalary() {
    return hourlyRate * hoursWorked;
  }

  // Override metode doWork dari parent class
  @override
  void doWork() {
    print('Developer $name is coding.');
  }
}

void main() {
  // Membuat objek dari kelas Manager dan Developer
  var manager = Manager('John', 40, Gender.male, 5000);
  var developer = Developer('Emma', 30, Gender.female, 50, 160);

  // Menampilkan informasi karyawan
  print('Manager Information:');
  manager.displayInfo();
  print('Salary: ${manager.calculateSalary()}');

  print('\nDeveloper Information:');
  developer.displayInfo();
  print('Salary: ${developer.calculateSalary()}');
}
