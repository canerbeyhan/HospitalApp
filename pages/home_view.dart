import 'package:caner_app/pages/chat_view.dart';
import 'package:caner_app/pages/profile_view.dart';
import 'package:caner_app/widgets/dummy_box.dart';
import 'package:caner_app/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.sort,
          color: Color(0xFF2F2C7E),
        ),
        centerTitle: true,
        title: const Text(
          "Doktorum",
          style: TextStyle(
            color: Color(0xFF2F2C7E),
          ),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: IconButton(
                onPressed: () {
                  Get.to(ChatView());
                },
                icon: Icon(
                  Icons.message,
                  color: Color(0xFF2F2C7E),
                ),
              ))
        ],
      ),
      bottomNavigationBar: SizedBox(
          width: Get.width,
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    Get.to(HomeView());
                  },
                  icon: const Icon(Icons.home)),
              IconButton(
                  onPressed: () {
                    Get.to(ProfileView());
                  },
                  icon: const Icon(Icons.person)),
            ],
          )),
      body: Column(
        children: [
          Center(child: SizedBox()),
          Text("Aramak İstediğiniz Anabilim Dalını Seçin."),
          DummyBox(),
          DummyBox(),
          DropdownButton(
            value: value,
            items: const [
              DropdownMenuItem(
                child: Text("Genel Cerrahi"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Onkoloji"),
                value: 2,
              ),
            ],
            onChanged: (int? val) {
              setState(() {
                value = val!;
              });
            },
          ),
          DummyBox(),
          DummyBox(),
          CustomTextField(labelText: "Aramak istediğiniz uzmanlığı yazınız"),
          DummyBox(),
          DummyBox(),
          MaterialButton(
            onPressed: () {},
            child: Text("Ara"),
          )
        ],
      ),
    );
  }
}
