import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: Column(
         children: [
           Row(
             children: [
               IconButton(onPressed:(){},icon: const Icon(Icons.arrow_back,color: Colors.blueAccent,),),
               const Spacer(),
               IconButton(onPressed:(){},icon: const Icon(Icons.settings,color: Colors.blueAccent,),),
             ],
           )
         ],
       ),
     ),
    );
  }
}
