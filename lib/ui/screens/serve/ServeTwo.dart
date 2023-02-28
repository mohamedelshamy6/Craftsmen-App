import 'package:flutter/material.dart';

class ServeTwo extends StatelessWidget {
  const ServeTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.blue,
            )),
        title: const Text(
          "مدرس خصوصي",
          style: TextStyle(fontSize: 25, color: Colors.blue),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            children: [
              Card(
                shape: const RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.blueAccent
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(5.0),topRight: Radius.circular(5.0)),
                          child: Image.asset("images/user_image.webp"),
                        ),
                        Positioned(
                            left: 100,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite,
                                color: Colors.white60,
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 5),
                          child: const Text(
                            "احمد طارق",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 4),
                          child: const Text(
                            "مدرس الفيزياء للثانوية العامة ",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                shape: const RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.blueAccent
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(5.0),topRight: Radius.circular(5.0)),
                          child: Image.asset("images/user_image.webp"),
                        ),
                        Positioned(
                            left: 100,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite,
                                color: Colors.white60,
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 5),
                          child: const Text(
                            "احمد طارق",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 4),
                          child: const Text(
                            "مدرس الفيزياء للثانوية العامة ",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                shape: const RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.blueAccent
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(5.0),topRight: Radius.circular(5.0)),
                          child: Image.asset("images/user_image.webp"),
                        ),
                        Positioned(
                            left: 100,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite,
                                color: Colors.white60,
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 5),
                          child: const Text(
                            "احمد طارق",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 4),
                          child: const Text(
                            "مدرس الفيزياء للثانوية العامة ",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                shape: const RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.blueAccent
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(5.0),topRight: Radius.circular(5.0)),
                          child: Image.asset("images/user_image.webp"),
                        ),
                        Positioned(
                            left: 100,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite,
                                color: Colors.white60,
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 5),
                          child: const Text(
                            "احمد طارق",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 4),
                          child: const Text(
                            "مدرس الفيزياء للثانوية العامة ",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                shape: const RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.blueAccent
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(5.0),topRight: Radius.circular(5.0)),
                          child: Image.asset("images/user_image.webp"),
                        ),
                        Positioned(
                            left: 100,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite,
                                color: Colors.white60,
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 5),
                          child: const Text(
                            "احمد طارق",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 4),
                          child: const Text(
                            "مدرس الفيزياء للثانوية العامة ",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                shape: const RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.blueAccent
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(5.0),topRight: Radius.circular(5.0)),
                          child: Image.asset("images/user_image.webp"),
                        ),
                        Positioned(
                            left: 100,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite,
                                color: Colors.white60,
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 5),
                          child: const Text(
                            "احمد طارق",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 4),
                          child: const Text(
                            "مدرس الفيزياء للثانوية العامة ",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                shape: const RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.blueAccent
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(5.0),topRight: Radius.circular(5.0)),
                          child: Image.asset("images/user_image.webp"),
                        ),
                        Positioned(
                            left: 100,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite,
                                color: Colors.white60,
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 5),
                          child: const Text(
                            "احمد طارق",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 4),
                          child: const Text(
                            "مدرس الفيزياء للثانوية العامة ",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                shape: const RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.blueAccent
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(5.0),topRight: Radius.circular(5.0)),
                          child: Image.asset("images/user_image.webp"),
                        ),
                        Positioned(
                            left: 100,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite,
                                color: Colors.white60,
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 5),
                          child: const Text(
                            "احمد طارق",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 4),
                          child: const Text(
                            "مدرس الفيزياء للثانوية العامة ",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                shape: const RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.blueAccent
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(5.0),topRight: Radius.circular(5.0)),
                          child: Image.asset("images/user_image.webp"),
                        ),
                        Positioned(
                            left: 100,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite,
                                color: Colors.white60,
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 5),
                          child: const Text(
                            "احمد طارق",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 4),
                          child: const Text(
                            "مدرس الفيزياء للثانوية العامة ",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                shape: const RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.blueAccent
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(5.0),topRight: Radius.circular(5.0)),
                          child: Image.asset("images/user_image.webp"),
                        ),
                        Positioned(
                            left: 100,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite,
                                color: Colors.white60,
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 5),
                          child: const Text(
                            "احمد طارق",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 4),
                          child: const Text(
                            "مدرس الفيزياء للثانوية العامة ",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                shape: const RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.blueAccent
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(5.0),topRight: Radius.circular(5.0)),
                          child: Image.asset("images/user_image.webp"),
                        ),
                        Positioned(
                            left: 100,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite,
                                color: Colors.white60,
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 5),
                          child: const Text(
                            "احمد طارق",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 4),
                          child: const Text(
                            "مدرس الفيزياء للثانوية العامة ",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                shape: const RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.blueAccent
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(5.0),topRight: Radius.circular(5.0)),
                          child: Image.asset("images/user_image.webp"),
                        ),
                        Positioned(
                            left: 100,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite,
                                color: Colors.white60,
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 5),
                          child: const Text(
                            "احمد طارق",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 4),
                          child: const Text(
                            "مدرس الفيزياء للثانوية العامة ",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                shape: const RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.blueAccent
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(5.0),topRight: Radius.circular(5.0)),
                          child: Image.asset("images/user_image.webp"),
                        ),
                        Positioned(
                            left: 100,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite,
                                color: Colors.white60,
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 5),
                          child: const Text(
                            "احمد طارق",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 4),
                          child: const Text(
                            "مدرس الفيزياء للثانوية العامة ",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                shape: const RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.blueAccent
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(5.0),topRight: Radius.circular(5.0)),
                          child: Image.asset("images/user_image.webp"),
                        ),
                        Positioned(
                            left: 100,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite,
                                color: Colors.white60,
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 5),
                          child: const Text(
                            "احمد طارق",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 4),
                          child: const Text(
                            "مدرس الفيزياء للثانوية العامة ",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                shape: const RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.blueAccent
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(5.0),topRight: Radius.circular(5.0)),
                          child: Image.asset("images/user_image.webp"),
                        ),
                        Positioned(
                            left: 100,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite,
                                color: Colors.white60,
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 5),
                          child: const Text(
                            "احمد طارق",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 4),
                          child: const Text(
                            "مدرس الفيزياء للثانوية العامة ",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                shape: const RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.blueAccent
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(5.0),topRight: Radius.circular(5.0)),
                          child: Image.asset("images/user_image.webp"),
                        ),
                        Positioned(
                            left: 100,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite,
                                color: Colors.white60,
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 5),
                          child: const Text(
                            "احمد طارق",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 4),
                          child: const Text(
                            "مدرس الفيزياء للثانوية العامة ",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                              Icon(Icons.star,color: Colors.amber,size: 15,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
    ;
  }
}
