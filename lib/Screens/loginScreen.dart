import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/registerScreen1.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/66.png',
              height: height / 3,
            ),
            const SizedBox(
              height: 10,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: SizedBox(
                width: width / 1.5,
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'البريد الالكتروني',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: SizedBox(
                width: width / 1.5,
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'كلمة السر',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              width: width / 1.5,
              height: height / 15,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(primary: Color(0xFF1C96E8)),
                child: const Text(
                  "تسجيل الدخول",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: height / 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "__________________",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "أو",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "__________________",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: height / 10,
            ),
            SizedBox(
              width: width / 1.5,
              height: height / 15,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterScreen1()),
                  );
                },
                style: ElevatedButton.styleFrom(primary: Color(0xFF1C96E8)),
                child: const Text(
                  "انشاء حساب جديد",
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
