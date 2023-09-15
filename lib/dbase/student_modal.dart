class Student{
  String username,name,motherName,email,address,pass;
  int emergencyPhone,mobile,grade,grYear;


  Student({
    required this.username,
    required this.name,
    required this.motherName,
    required this.email,
    required this.address,
    required this.pass,
    required this.emergencyPhone,
    required this.mobile,
    required this.grade,
    required this.grYear,
  
  });

factory Student.fromJson(Map<dynamic, dynamic> json) {
    return Student(username: json['username'], name: json['name'], motherName: json['motherName'], email: json['email'], address: json['address'], pass: json['pass'], emergencyPhone: json['emergencyPhone'], mobile: json['mobile'], grade: json['grade'], grYear: json['grYear']); }

  Map<String, dynamic> toJson() {
    return {
      "username": username,
      "name": name,
      "motherName": motherName,
      "address": address,
      "grade": grade,
      "email": email,
      "pass": pass,
      "emergencyPhone": emergencyPhone,
      "mobile": mobile,
      "grYear": grYear,
    };
  }
}