import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  String name,
      username,
      password,
      birth,
      grade,
      dropdownvalue1,
      prischool,
      dropdownvalue2,
      dropdownvalue3,
      dropdownvalue4,
      dropdownvalue5;

  double wh = 0, total = 0;
  WelcomePage({
    Key? key,
    required this.name,
    required this.username,
    required this.password,
    required this.birth,
    required this.grade,
    required this.prischool,
    required this.dropdownvalue1,
    required this.dropdownvalue2,
    required this.dropdownvalue3,
    required this.dropdownvalue4,
    required this.dropdownvalue5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สรุปข้อมูลการสมัครเรียน'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: ListView(
            children: [
              Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('Username '),
                    subtitle: Text('$name'),
                  )),
              Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('Password'),
                    subtitle: Text('$password'),
                  )),
              Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('ชื่อ-นามสกุล '),
                    subtitle: Text('$name'),
                  )),
              Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('วัน/เดือน/ปี เกิด'),
                    subtitle: Text(' $birth'),
                  )),
              Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('เกรดเฉลี่ย '),
                    subtitle: Text(' $grade'),
                  )),
              Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('วุฒิการศึกษา'),
                    subtitle: Text(' $dropdownvalue5'),
                  )),
              Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('โครงการที่ใช้สมัคร'),
                    subtitle: Text('$dropdownvalue1'),
                  )),
              Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('อันดับที่ 1'),
                    subtitle: Text('$dropdownvalue2'),
                  )),
              Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('อันดับที่ 2'),
                    subtitle: Text('$dropdownvalue3'),
                  )),
              Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('อันดับที่ 3'),
                    subtitle: Text('$dropdownvalue4'),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  double numberAdd(double w, double h) {
    total = w + h;
    return total;
  }
}
