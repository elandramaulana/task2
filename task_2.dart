import 'student.dart';

void main() {
  Student student = new Student(
      name: 'Elan',
      gender: 'L',
      dob: DateTime.utc(2001, 12, 16),
      idFac: '3',
      idProd: '1',
      year: 2020);
  Student student1 = new Student(
      name: 'Lala',
      gender: 'W',
      dob: DateTime.utc(2002, 3, 15),
      idFac: '3',
      idProd: '1',
      year: 2020);
  Student student2 = new Student(
      name: 'Jimmy',
      gender: 'L',
      dob: DateTime.utc(2003, 4, 23),
      idFac: '3',
      idProd: '1',
      year: 2020);
  Student student3 = new Student(
      name: 'Lisa',
      gender: 'W',
      dob: DateTime.utc(2002, 1, 12),
      idFac: '3',
      idProd: '1',
      year: 2020);
  Student student4 = new Student(
      name: 'Nana',
      gender: 'W',
      dob: DateTime.utc(2001, 6, 13),
      idFac: '3',
      idProd: '1',
      year: 2020);
  Student student5 = new Student(
      name: 'Sam',
      gender: 'L',
      dob: DateTime.utc(2001, 12, 15),
      idFac: '3',
      idProd: '1',
      year: 2020);
  Student student6 = new Student(
      name: 'Jenny',
      gender: 'W',
      dob: DateTime.utc(2001, 3, 2),
      idFac: '3',
      idProd: '1',
      year: 2020);
  Student student7 = new Student(
      name: 'John',
      gender: 'L',
      dob: DateTime.utc(2001, 4, 6),
      idFac: '3',
      idProd: '1',
      year: 2020);
  Student student8 = new Student(
      name: 'Ayu',
      gender: 'W',
      dob: DateTime.utc(2001, 11, 9),
      idFac: '3',
      idProd: '1',
      year: 2020);
  Student student9 = new Student(
      name: 'Prob',
      gender: 'L',
      dob: DateTime.utc(2001, 12, 8),
      idFac: '3',
      idProd: '1',
      year: 2020);

  List<Student> classA = [];
  classA.add(student);
  classA.add(student1);
  classA.add(student2);
  classA.add(student3);
  classA.add(student4);
  classA.add(student5);
  classA.add(student6);
  classA.add(student7);
  classA.add(student8);
  classA.add(student9);

  List<Student> pria = [];
  List<Student> wanita = [];

  classA.forEach((student) {
    if (student.gender == 'L') {
      pria.add(student);
    } else if (student.gender == 'W') {
      wanita.add(student);
    } else {
      print('Gender tidak tersedia');
    }
  });

  print('---------Mahasiswa Pria--------- \n');
  pria.forEach((student) {
    print('Nama:  ${student.name}');
    print('NIM : ${student.generateStudentId()} \n');
  });

  print('---------Mahasiswa Wanita--------- \n');
  wanita.forEach((student) {
    print('Nama:  ${student.name}');
    print('NIM : ${student.generateStudentId()} \n');
  });
}
