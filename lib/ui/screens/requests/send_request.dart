import 'package:flutter/material.dart';

class SendRequest extends StatelessWidget{
  const SendRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){},icon: const Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
              children:  [
                const Padding(
                  padding: EdgeInsets.all(30),
                  child: Text("برجاء كتابه طلبك بالتفصيل ",style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  )),
                ),
                const SizedBox(height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(

                        hintTextDirection: TextDirection.ltr,

                        hintStyle: TextStyle(
                            height: 15
                        ),
                        hintText: 'برجاء كتابه طلبك والسعر المتوقع لتنفيذه لتسهيل التواصل',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.blue,width: 2,
                                style: BorderStyle.solid)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                width: 2,
                                color: Colors.blue
                            )
                        )
                    ),

                  ),
                ),
                const SizedBox(height: 60,
                ),
                Center(
                  child: SizedBox(
                    height: 45,
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(" جاري تنفيذ طلبك",style: TextStyle(fontSize: 25),),
                      style: const ButtonStyle(

                          backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                    ),
                  ),
                ),
              ],
            )
        ),
      )
    );
  }

}