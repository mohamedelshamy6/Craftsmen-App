import 'package:flutter/material.dart';

class ServeOne extends StatelessWidget {
  const ServeOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.blue,
        ),
        title: const Text(
          "الخدمات",
          style: TextStyle(color: Colors.blue, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color.fromRGBO(188, 224, 253, 0.5),
              ),
              margin: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "مهندس",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(51, 244, 253, 10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color.fromRGBO(188, 224, 253, 0.5),
              ),
              margin: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "مبرمج",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(51, 244, 253, 10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color.fromRGBO(188, 224, 253, 0.5),
              ),
              margin: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "طبيب",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(51, 244, 253, 10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color.fromRGBO(188, 224, 253, 0.5),
              ),
              margin: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "مدرس خصوصي",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(51, 244, 253, 10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color.fromRGBO(188, 224, 253, 0.5),
              ),
              margin: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "صيدلي",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(51, 244, 253, 10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color.fromRGBO(188, 224, 253, 0.5),
              ),
              margin: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "تمريض منزلى",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(51, 244, 253, 10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color.fromRGBO(188, 224, 253, 0.5),
              ),
              margin: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "حلاق",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(51, 244, 253, 10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color.fromRGBO(188, 224, 253, 0.5),
              ),
              margin: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "نجار",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(51, 244, 253, 10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color.fromRGBO(188, 224, 253, 0.5),
              ),
              margin: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "نقاش",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(51, 244, 253, 10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color.fromRGBO(188, 224, 253, 0.5),
              ),
              margin: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "حداد",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(51, 244, 253, 10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color.fromRGBO(188, 224, 253, 0.5),
              ),
              margin: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "استورجي",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(51, 244, 253, 10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color.fromRGBO(188, 224, 253, 0.5),
              ),
              margin: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "محار",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(51, 244, 253, 10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color.fromRGBO(188, 224, 253, 0.5),
              ),
              margin: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "كهربائي",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(51, 244, 253, 10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color.fromRGBO(188, 224, 253, 0.5),
              ),
              margin: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "طباخ",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(51, 244, 253, 10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color.fromRGBO(188, 224, 253, 0.5),
              ),
              margin: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "غسيل عربيات",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(51, 244, 253, 10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color.fromRGBO(188, 224, 253, 0.5),
              ),
              margin: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "جزار",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(51, 244, 253, 10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color.fromRGBO(188, 224, 253, 0.5),
              ),
              margin: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "عامل نضافه",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(51, 244, 253, 10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color.fromRGBO(188, 224, 253, 0.5),
              ),
              margin: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "رجل توصيل",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(51, 244, 253, 10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color.fromRGBO(188, 224, 253, 0.5),
              ),
              margin: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "عامل بناء",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(51, 244, 253, 10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color.fromRGBO(188, 224, 253, 0.5),
              ),
              margin: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "ميكانيكي",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(51, 244, 253, 10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color.fromRGBO(188, 224, 253, 0.5),
              ),
              margin: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "نجار مسلح",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(51, 244, 253, 10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color.fromRGBO(188, 224, 253, 0.5),
              ),
              margin: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "ماركت",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(51, 244, 253, 10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color.fromRGBO(188, 224, 253, 0.5),
              ),
              margin: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "مهندس",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(51, 244, 253, 10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color.fromRGBO(188, 224, 253, 0.5),
              ),
              margin: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "جارد",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(51, 244, 253, 10),
                    ),
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}
