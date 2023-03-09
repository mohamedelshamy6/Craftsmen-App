import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
        body: SafeArea(
            child: Column(
      children: [
        Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40.0),
                      bottomLeft: Radius.circular(40.0))),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(
                          Icons.notifications_none,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 170,
                    child: Column(
                      children: const [
                        Text(
                          "خدماتك",
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Container(
          //margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(20.0),
          child: Material(
            elevation: 5.0,
            child: TextFormField(
              textAlign: TextAlign.end,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                prefixIcon: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.search)),
                hintText: "ابحث عن الخدمه التي تحتاجها",
                hintStyle: const TextStyle(color: Colors.blue, fontSize: 20),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(color: Colors.white30, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(color: Colors.white30, width: 2)),
              ),
            ),
          ),
        ),
      ],
    )));
  }
}
