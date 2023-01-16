import 'package:caner_app/pages/home_view.dart';
import 'package:caner_app/pages/login_view.dart';
import 'package:caner_app/widgets/dummy_box.dart';
import 'package:caner_app/widgets/text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});
  var argumentValue = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: argumentValue == false
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(child: SizedBox()),
                  DummyBox(),
                  DummyBox(),
                  DummyBox(),
                  Image.asset(
                    "assets/images/logo.png",
                    height: 100,
                  ),
                  DummyBox(),
                  DummyBox(),
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
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    onPressed: () {
                      Get.to(HomeView());
                    },
                    child: const Text(
                      "Kayıt Ol",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  DummyBox(),
                  DummyBox(),
                  DummyBox(),
                  DummyBox(),
                  DummyBox(),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "Zaten bir hesabın mı var? ",
                        style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: "Hemen Giriş Yap",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.to(LoginView());
                          },
                        style: TextStyle(
                          color: Color(0xFF2F2C7E),
                        ))
                  ]))
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(child: SizedBox()),
                  Image.asset(
                    "assets/images/logo.png",
                    height: 100,
                  ),
                  DummyBox(),
                  DummyBox(),
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
                  CustomTextField(
                      labelText: "Mezun Olduğunuz Fakülteyi Yazınız"),
                  DummyBox(),
                  CustomTextField(
                      labelText: "Bulunduğunuz Hastane veya Kliniği Yazınız"),
                  DummyBox(),
                  CustomTextField(labelText: "Anabilim Dalını Yazınız"),
                  DummyBox(),
                  CustomTextField(labelText: "Uzmanlık Alanı Yazınız"),
                  DummyBox(),
                  MaterialButton(
                    height: 50,
                    minWidth: Get.width * 0.8,
                    color: const Color(0xFF2F2C7E),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    onPressed: () {
                      Get.to(HomeView());
                    },
                    child: const Text(
                      "Kayıt Ol",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  DummyBox(),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "Zaten bir hesabın mı var? ",
                        style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: "Hemen Giriş Yap",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.to(LoginView());
                          },
                        style: TextStyle(
                          color: Color(0xFF2F2C7E),
                        ))
                  ]))
                ],
              ));
  }
}
