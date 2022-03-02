import 'package:flutter/material.dart';
import 'welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Form(),
    );
  }
}

class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  TextEditingController _name = TextEditingController();
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _birth = TextEditingController();
  TextEditingController _grade = TextEditingController();
  TextEditingController _prischool = TextEditingController();
  String _dropdownvalue1 = 'โครงการรับตรงสอบข้อเขียน';
  String _dropdownvalue2 =
      '''ภาควิชาเทคโนโลยีสารสนเทศ,หลักสูตร 4 ปีรับ ม.6 ปวช.,\nสาขาวิชาเทคโนโลยีสารสนเทศ (IT)''';
  String _dropdownvalue3 =
      '''ภาควิชาเทคโนโลยีสารสนเทศ,หลักสูตร 4 ปีรับ ม.6 ปวช.,\nสาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย (INE)''';
  String _dropdownvalue4 =
      '''ภาควิชาเทคโนโลยีสารสนเทศ,หลักสูตร ต่อเนื่อง รับ ปวส.,\nสาขาวิชาเทคโนโลยีสารสนเทศ (ITI)''';
  String _dropdownvalue5 = 'ม.6';
  var items3 = ['ม.6', 'ปวช'];
  var items1 = [
    'โครงการรับตรงสอบข้อเขียน',
    'โครงการโควตาพื้นที่',
    'โครงการ portfolio',
    'โครงการเรียนดี',
    'โครงการรับตรงใช้คะแนน GAT/PAT',
  ];
  var items2 = [
    '''ภาควิชาเทคโนโลยีสารสนเทศ,หลักสูตร 4 ปีรับ ม.6 ปวช.,\nสาขาวิชาเทคโนโลยีสารสนเทศ (IT)''',
    '''ภาควิชาเทคโนโลยีสารสนเทศ,หลักสูตร 4 ปีรับ ม.6 ปวช.,\nสาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย (INE)''',
    '''ภาควิชาเทคโนโลยีสารสนเทศ,หลักสูตร ต่อเนื่อง รับ ปวส.,\nสาขาวิชาเทคโนโลยีสารสนเทศ (ITI)''',
    '''ภาควิชาเทคโนโลยีสารสนเทศ,หลักสูตร ต่อเนื่อง รับ ปวส.,\nสาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย (INET)''',
    '''ภาควิชาการจัดการอุตสาหกรรม,หลักสูตร 4 ปีรับ ม.6 ปวช.,\nสาขาวิชาวิศวกรรมอุตสาหการและการจัดการ (IEM)''',
    '''ภาควิชาการจัดการอุตสาหกรรม,หลักสูตร 4 ปีรับ ม.6 ปวช.,\nสาขาวิชาเทคโนโลยีเครื่องกลและกระบวนการผลิต(MM)''',
    '''ภาควิชาการจัดการอุตสาหกรรม,หลักสูตร ต่อเนื่อง รับ ปวส.,\nสาขาวิชาการจัดการอุตสาหกรรม (IMT)''',
    '''ภาควิชาการจัดการอุตสาหกรรม,หลักสูตร ต่อเนื่อง รับ ปวส.,\nสาขาวิชาเทคโนโลยีเครื่องกลและกระบวนการผลิต(MMT)''',
    '''ภาควิชาวิศวกรรมเกษตรเพื่ออุตสาหกรรม,หลักสูตร 4 ปีรับ ม.6 ปวช.\n,สาขาวิชาวิศวกรรมเกษตรและอาหาร (AFE)''',
    '''ภาควิชาวิศวกรรมเกษตรเพื่ออุตสาหกรรม,หลักสูตร ต่อเนื่อง รับ ปวส.,\nสาขาวิชาวิศวกรรมเกษตรและอาหาร (AFET)''',
    '''ภาควิชาการออกแบบและบริหารงานก่อสร้าง,หลักสูตร 4 ปีรับ ม.6 ปวช.,\nสาขาวิชาคอมพิวเตอร์ช่วยออกแบบและบริหารงานก่อสร้าง (CA)''',
    '''ภาควิชาการออกแบบและบริหารงานก่อสร้าง,หลักสูตร ต่อเนื่อง รับ ปวส.,\nสาขาวิชาคอมพิวเตอร์ช่วยออกแบบและบริหารงานก่อสร้าง (CDM)'''
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สมัครเรียนในคณะ FITM'),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _username,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Username'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _password,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'ชื่อ-นามสกุล'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _grade,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'เกรดเฉลี่ย'),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _birth,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'วัน/เดือน/ปี เกิด'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('วุฒิการศึกษา'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButton(
                    // Initial Value
                    value: _dropdownvalue5,
                    hint: const Text('วุฒิการศึกษา'),
                    // Array list of items
                    items: items3.map((String items3) {
                      return DropdownMenuItem(
                        value: items3,
                        child: Text(items3, style: TextStyle(fontSize: 12)),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        _dropdownvalue5 = newValue!;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('โครงการที่ใช้สมัคร'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButton(
                    // Initial Value
                    value: _dropdownvalue1,

                    // Array list of items
                    items: items1.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items, style: TextStyle(fontSize: 12)),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        _dropdownvalue1 = newValue!;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('อันดับที่ 1'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButton(
                    // Initial Value
                    value: _dropdownvalue2,

                    // Down Arrow Icon

                    // Array list of items
                    items: items2.map((String items2) {
                      return DropdownMenuItem(
                        value: items2,
                        child: Text(items2, style: TextStyle(fontSize: 12)),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue1) {
                      setState(() {
                        _dropdownvalue2 = newValue1!;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('อันดับที่ 2'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButton(
                    // Initial Value
                    value: _dropdownvalue3,

                    // Array list of items
                    items: items2.map((String items2) {
                      return DropdownMenuItem(
                        value: items2,
                        child: Text(
                          items2,
                          style: TextStyle(fontSize: 12),
                        ),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue1) {
                      setState(() {
                        _dropdownvalue3 = newValue1!;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('อันดับที่ 3'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButton(
                    // Initial Value
                    value: _dropdownvalue4,
                    // Array list of items
                    items: items2.map((String items2) {
                      return DropdownMenuItem(
                        value: items2,
                        child: Text(items2, style: TextStyle(fontSize: 12)),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue1) {
                      setState(() {
                        _dropdownvalue4 = newValue1!;
                      });
                    },
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => WelcomePage(
                      name: _name.text,
                      username: _username.text,
                      password: _password.text,
                      birth: _birth.text,
                      grade: _grade.text,
                      prischool: _prischool.text,
                      dropdownvalue1: _dropdownvalue1,
                      dropdownvalue2: _dropdownvalue2,
                      dropdownvalue3: _dropdownvalue3,
                      dropdownvalue4: _dropdownvalue4,
                      dropdownvalue5: _dropdownvalue5,
                    ),
                  ),
                );
              },
              child: Text('สรุปการสมัคร'),
            )
          ],
        ),
      ),
    );
  }
}
