import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: const [
                Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "تسجيل الدخول",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blue),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              textAlign: TextAlign.end,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: "البريد الالكتروني",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              obscureText: true,
              textAlign: TextAlign.end,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  hintText: "كلمة المرور",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  child: const Text(
                    "هل نسيت كلمه المرور؟",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.blue),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            height: 48,
            width: double.infinity,
            child: ElevatedButton(
                child: const Text("تسجيل الدخول"), onPressed: () {}),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            "او عن طريق استخدام",
            style: TextStyle(fontSize: 15, color: Colors.blue),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 25,
                child: IconButton(
                    icon: const Icon(Icons.facebook), onPressed: () {}),
              ),
              const SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 25,
                child: IconButton(
                    icon: const Icon(Icons.facebook), onPressed: () {}),
              ),
              const SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 25,
                child: IconButton(
                    icon: const Icon(Icons.facebook,), onPressed: () {}),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          TextButton(
              onPressed: () {},
              child: TextButton(
                onPressed: () {},
                child: const Text("بالفعل لديك حساب؟"),
              ))
        ],
      ),
    )));
  }
}
