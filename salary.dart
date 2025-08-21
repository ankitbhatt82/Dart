/*Create a class employee with the properties: EmpId, EmpName, EmpDept and EmpSalary. Provide
setter and getter methods for these properties. Calculate the salary as per the dept of the
employee. All employee are entitled for basic salary 50000 with Allowances as per the dept. The
percentage of allowances are given in the following map: {admin: 20%, teamlead:70%, technical:
60%, officestaff:10%}.
*/

class Employee {
  int empId;
  String empName;
  String empDept;
  double empSalary;

  static const Map<String, double> ALLOWANCE_PERCENTAGES = {
    'admin': 0.20,
    'teamlead': 0.70,
    'technical': 0.60,
    'officestaff': 0.10,
  };

  Employee(this.empId, this.empName, this.empDept) : empSalary = 50000;

  String get empNameValue => empName;
  set empNameValue(String name) => empName = name;

  String get empDeptValue => empDept;
  set empDeptValue(String dept) => empDept = dept;

  double get empSalaryValue => empSalary;

  double calculateAllowance() {
    if (ALLOWANCE_PERCENTAGES.containsKey(empDept)) {
      double allowancePercentage = ALLOWANCE_PERCENTAGES[empDept]!;
      double allowance = empSalary * allowancePercentage;
      return allowance;
    } else {
      return 0;
    }
  }

  double calculateTotalSalary() {
    double allowance = calculateAllowance();
    double totalSalary = empSalary + allowance;
    return totalSalary;
  }
}

void main() {
  Employee emp = Employee(1, "Ankit Bhatt", "admin");

  print(emp.empNameValue);

  print(emp.calculateTotalSalary());
}
