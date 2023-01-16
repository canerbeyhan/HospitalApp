import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              Get.back();
            },
            color: Color(0xFF2F2C7E),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Mesajlar",
            style: TextStyle(
              color: Color(0xFF2F2C7E),
            ),
          )),
      body: Column(
        children: [
          Center(child: SizedBox()),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: Get.height * 0.1,
            width: Get.width * 0.8,
            child: Card(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                    ),
                  ),
                  Text("Dr.Ahmet")
                ],
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.1,
            width: Get.width * 0.8,
            child: Card(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.pink,
                    ),
                  ),
                  Text("Doç.Dr.Aslı"),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromARGB(255, 160, 25, 15),
                      ),
                      child: Center(
                        child: Text(
                          "1",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.1,
            width: Get.width * 0.8,
            child: Card(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.pink,
                    ),
                  ),
                  Text("Dr.Ayşe")
                ],
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.1,
            width: Get.width * 0.8,
            child: Card(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                    ),
                  ),
                  Text("Dr.Mehmet"),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromARGB(255, 160, 25, 15),
                      ),
                      child: Center(
                        child: Text(
                          "3",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
