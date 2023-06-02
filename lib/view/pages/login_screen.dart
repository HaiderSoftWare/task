import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/view/pages/bottom_navigations.dart';
import 'package:task/view/shared/constant/colors.dart';

import '../shared/function/function.dart';
import '../shared/widget/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  GlobalKey<FormState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: globalKey,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(color: PrimaryKD),
              ),
              Container(
                decoration: BoxDecoration(
                  //  color: SecondKD2,
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [
                      SecondKD2,
                      SecondKD1,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(66),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          'asset/31443.png',
                          height: 240,
                          width: 240,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Center(
                        child: Text(
                          'معهد اوكسفورد الحديث التعليمي ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          CustomCard(
                            icon: 'asset/1-05.png',
                            title: 'أتصل بنا ',
                          ),
                          const SizedBox(width: 20),
                          InkWell(
                            onTap: () {
                              Get.to(BottomNavi());
                            },
                            child: CustomCard(
                              icon: 'asset/1-03.png',
                              title: 'أعلانات',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      TitleTextFeild(
                        title: 'بريد الاكتروني',
                        icon: 'asset/1-10.png',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomField(
                        controller: null,
                        obscureText: false,
                        // hinttext: 'Phone',
                        validatorf: (text) => vinputphne(text),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TitleTextFeild(
                        title: 'كلمه المرور',
                        icon: 'asset/1-10.png',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomField(
                        controller: null,
                        obscureText: false,
                        // hinttext: 'Password',
                        validatorf: (text) => vinputpassword(text),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        'نسيت كلمه المرور',
                        style: TextStyle(
                          color: PrimaryKD,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  String title;
  String icon;
  CustomCard({
    required this.title,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 185,
      height: 58,
      decoration: BoxDecoration(
        color: PrimaryKD,
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            icon,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

class TitleTextFeild extends StatelessWidget {
  String title;
  String icon;
  TitleTextFeild({
    required this.title,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        Image.asset(
          icon,
          width: 50,
        ),
      ],
    );
  }
}
