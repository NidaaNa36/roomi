import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screens/registerScreen2.dart';
import 'package:flutter_application_1/Screens/resgisterScreen.dart';

class RegisterScreen1 extends StatefulWidget {
  const RegisterScreen1({super.key});

  @override
  State<RegisterScreen1> createState() => _RegisterScreen1State();
}

class _RegisterScreen1State extends State<RegisterScreen1> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Center(
        child: Column(children: [
          Image.asset(
            'assets/images/66.png',
            height: height / 3,
          ),
          const Text(
            "هل أنت ؟ ",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 21, 82, 122),
                fontSize: 38),
          ),
          Card(
            margin: const EdgeInsets.all(5),
            elevation: 8,
            shadowColor: const Color(0xFF1C96E8),
            child: Column(children: [
              Image.asset(
                'assets/images/s1.png',
                height: height / 6,
                width: width / 2,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterScreen2()),
                  );
                },
                style: TextButton.styleFrom(
                  foregroundColor: const Color(0xFF1C96E8),
                ),
                child: const Text(
                  "طالب",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              )
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          Card(
            margin: const EdgeInsets.all(5),
            elevation: 8,
            shadowColor: const Color(0xFF1C96E8),
            child: Column(children: [
              Image.asset(
                'assets/images/p1.png',
                height: height / 6,
                width: width / 2,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterScreen22()),
                  );
                },
                style: TextButton.styleFrom(
                  foregroundColor: const Color(0xFF1C96E8),
                ),
                child: const Text(
                  "مالك سكن",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              )
            ]),
          ),
        ]),
      ),
    );
  }
}
