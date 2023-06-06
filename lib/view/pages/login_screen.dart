import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
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
                  padding: EdgeInsets.only(top: 4.h, right: 4.w, left: 4.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          'asset/31443.png',
                          height: 22.h,
                          width: 50.w,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Center(
                        child: Text(
                          'معهد اوكسفورد الحديث التعليمي ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Row(
                        children: [
                          CustomCard(
                            icon: 'asset/1-05.png',
                            title: 'أتصل بنا ',
                          ),
                          SizedBox(width: 4.w),
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
                      SizedBox(
                        height: 4.h,
                      ),
                      TitleTextFeild(
                        title: 'بريد الاكتروني',
                        icon: 'asset/1-10.png',
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      CustomField(
                        controller: null,
                        obscureText: false,
                        // hinttext: 'Phone',
                        validatorf: (text) => vinputphne(text),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      TitleTextFeild(
                        title: 'كلمه المرور',
                        icon: 'asset/1-10.png',
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      CustomField(
                        controller: null,
                        obscureText: false,
                        // hinttext: 'Password',
                        validatorf: (text) => vinputpassword(text),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        'نسيت كلمه المرور',
                        style: TextStyle(
                          color: PrimaryKD,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
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
      width: 44.w,
      height: 7.h,
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
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
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
          style: TextStyle(
            color: Colors.white,
            fontSize: 17.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        Image.asset(
          icon,
          width: 14.w,
        ),
      ],
    );
  }
}
