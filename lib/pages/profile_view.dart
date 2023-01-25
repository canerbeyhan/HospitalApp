import 'package:caner_app/widgets/dummy_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'home_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            ],
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: SizedBox()),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(32)),
            child: Icon(Icons.man_rounded),
          ),
          DummyBox(),
          DummyBox(),
          Text("Doç.Dr.Selman", style: TextStyle(fontSize: 20)),
          DummyBox(),
          DummyBox(),
          MaterialButton(
            color: Color(0xFF2F2C7E),
            onPressed: () {},
            child: Text(
              "Profili Düzenle",
              style: TextStyle(color: Colors.white),
            ),
          ),
          DummyBox(),
          DummyBox(),
          Text("Hastane : Ondokuz Mayıs Üniversitesi Hastanesi"),
          DummyBox(),
          DummyBox(),
          Text("Anabilim Dalı : Genel Cerrahi"),
          DummyBox(),
          DummyBox(),
          Text("Uzmanlık Alanı : Metabolik Cerrahi"),
          DummyBox(),
          DummyBox(),
          DummyBox(),
          DummyBox(),
        ],
      ),
    );
  }
}
