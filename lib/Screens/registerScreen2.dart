import 'package:flutter/material.dart';

class RegisterScreen2 extends StatefulWidget {
  const RegisterScreen2({super.key});

  @override
  State<RegisterScreen2> createState() => _RegisterScreen2State();
}

class _RegisterScreen2State extends State<RegisterScreen2> {
  var size, height, width;

  @override
  late int selectedRadio;
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
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
            const SizedBox(
              height: 10,
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
            Directionality(
              textDirection: TextDirection.rtl,
              child: SizedBox(
                width: width / 1.1,
                child: Row(
                  children: [
                    Text("الجنس"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
