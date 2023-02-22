import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
              const SizedBox(height: 50,),
              const Text("انشاء حساب",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  textAlign: TextAlign.end,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      hintText: "الاسم",
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
                  textAlign: TextAlign.end,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "كلمه السر",
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
                  textAlign: TextAlign.end,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      hintText: "تاكيد كلمة السر",
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
                  textAlign: TextAlign.end,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      hintText: "رقم الهاتف",
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
              const SizedBox(height: 20,),
              const Text(
                "من خلال انشاء الحساب فانك توافق على بنود الخدمه", style:TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Colors.blue
              ),),
              const SizedBox(height: 20,),
              Container(
                height: 48,
                padding: const EdgeInsets.only(left: 10,right: 10),
                width: double.infinity,
                child: ElevatedButton(onPressed: (){},child: const Text("استمرار"),),
              )
            ],
          ),
        )
      ),
    );
  }

}