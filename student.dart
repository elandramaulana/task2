import 'dart:math';

class Student {
  var name;
  var dob;
  var gender;
  var idFac;
  var idProd;
  var year;

  Student({
    this.name,
    this.dob,
    this.gender,
    this.idFac,
    this.idProd,
    this.year,
  });

  factory Student.fromJson(Map<String, dynamic> json) => Student(
        name: json["name"],
        dob: json["dob"],
        gender: json["gender"],
        idFac: json["idFac"],
        idProd: json["idProd"],
        year: json["year"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "dob": dob,
        "gender": gender,
        "idFac": idFac,
        "idProd": idProd,
        "year": year,
      };

  showName() {
    return this.name;
  }

  generateIdProd(int idProd) {
    String output = idProd < 10 ? '0$idProd' : idProd.toString();
    return output;
  }

  generateIdGender() {
    return this.gender == 'L'
        ? '1'
        : gender == 'W'
            ? '2'
            : throw 'Gender salah';
  }

  generateRandomId() {
    int id = Random().nextInt(9);
    return id;
  }

  generateDobId() {
    return this.dob =
        '${this.dob.day.toString()}${this.dob.month.toString()}${this.dob.year.toString()}';
  }

  generateStudentId() {
    try {
      return 'NIM: ${this.year.toString().substring(2)}${this.idFac.toString()}${generateIdProd(int.parse(idProd))}${generateIdGender()}${generateDobId()}${generateRandomId()}';
    } catch (e) {
      return e;
    }
  }
}
