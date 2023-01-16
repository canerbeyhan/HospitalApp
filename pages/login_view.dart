import 'package:caner_app/pages/home_view.dart';
import 'package:caner_app/pages/register_view.dart';
import 'package:caner_app/widgets/dummy_box.dart';
import 'package:caner_app/widgets/text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool toggleValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: SizedBox()),
          DummyBox(),
          DummyBox(),
          DummyBox(),
          Image.asset(
            "assets/images/logo.png",
            height: 200,
          ),
          DummyBox(),
          DummyBox(),
          DummyBox(),
          const Text(
            "Hemen Giriş Yap",
            style: TextStyle(
              fontSize: 24,
              color: Color(0xFF2F2C7E),
            ),
          ),
          DummyBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hasta"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: FlutterSwitch(
                  activeColor: Color(0xFF2F2C7E),
                  value: toggleValue,
                  onToggle: (value) {
                    setState(() {
                      toggleValue = !toggleValue;
                      print(toggleValue);
                    });
                  },
                ),
              ),
              Text("Doktor")
            ],
          ),
          DummyBox(),
          CustomTextField(
            icon: Icon(
              Icons.email_outlined,
            ),
            labelText: "Email",
            hintText: "Email'inizi giriniz",
          ),
          DummyBox(),
          CustomTextField(
            icon: Icon(
              Icons.key_outlined,
            ),
            labelText: "Şifre",
            hintText: "Şifrenizi giriniz.",
          ),
          DummyBox(),
          DummyBox(),
          MaterialButton(
            height: 70,
            minWidth: Get.width * 0.8,
            color: const Color(0xFF2F2C7E),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            onPressed: () {
              Get.to(HomeView());
            },
            child: const Text(
              "Giriş Yap",
              style: TextStyle(color: Colors.white),
            ),
          ),
          DummyBox(),
          DummyBox(),
          DummyBox(),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "Bir hesabın yok mu? ",
                style: TextStyle(color: Colors.black)),
            TextSpan(
                text: "Hemen Kayıt Ol",
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Get.to(() => RegisterView(), arguments: toggleValue);
                  },
                style: TextStyle(
                  color: Color(0xFF2F2C7E),
                ))
          ]))
        ],
      ),
    );
  }
}
