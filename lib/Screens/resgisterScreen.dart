import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/OwnerScreen.dart';
import 'package:flutter_application_1/Screens/registerScreen1.dart';

import 'StudentScreen.dart';

const List<String> list = <String>[
  'أنثى',
  'ذكر',
];

class RegisterScreen22 extends StatefulWidget {
  const RegisterScreen22({super.key});

  @override
  State<RegisterScreen22> createState() => _RegisterScreen22State();
}

class _RegisterScreen22State extends State<RegisterScreen22> {
  TextEditingController dateinput = TextEditingController();
  DateTime datetime = DateTime.now();
  var size, height, width;
  String? dropdownValue;
  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/66.png',
              height: height / 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: SizedBox(
                    width: width / 2.3,
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "الاسم العائلة",
                      ),
                    ),
                  ),
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: SizedBox(
                    width: width / 2.3,
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "الاسم الأول",
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: height / 40,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: SizedBox(
                width: width / 1.1,
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "البريد الالكتروني",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height / 40,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: SizedBox(
                width: width / 1.1,
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "رقم الهاتف",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height / 40,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: SizedBox(
                width: width / 1.1,
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "العنوان",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height / 40,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: SizedBox(
                width: width / 1.1,
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "كلمة السر",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height / 40,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: SizedBox(
                width: width / 1.1,
                child: DropdownButton<String>(
                  hint: Text("الجنس"),
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_drop_down),
                  elevation: 16,
                  underline: Container(height: 2),
                  onChanged: (String? value) {
                    setState(() {
                      dropdownValue = value as String;
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(
              height: height / 40,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: SizedBox(
                width: width / 1.1,
                child: TextField(
                  controller: dateinput,
                  readOnly: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "تاريخ الميلاد",
                  ),
                  onTap: () async {
                    DateTime? newDate = await showDatePicker(
                      context: context,
                      initialDate: datetime,
                      firstDate: DateTime(1900),
                      lastDate: DateTime(3000),
                    );
                    if (newDate == null) return;
                    setState(() {
                      datetime = newDate;
                    });
                    final newDateTime = DateTime(
                      newDate.year,
                      newDate.month,
                      newDate.day,
                    );

                    setState(() {
                      datetime = newDateTime;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: height / 40,
            ),
            SizedBox(
              height: height / 15,
              width: width / 1.1,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OwnerScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(primary: Color(0xFF1C96E8)),
                child: const Text(
                  "تسجيل",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
