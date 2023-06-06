import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../model/sections.dart';
import '../shared/constant/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(color: PrimaryKD),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(66),
                  topRight: Radius.circular(66),
                ),
              ),
            ),
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: SecondKD2,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(66),
                  topRight: Radius.circular(66),
                  bottomLeft: Radius.circular(70),
                  bottomRight: Radius.circular(70),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 4.h, right: 4.w, left: 4.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'asset/1-13.png',
                          width: 12.w,
                        ),
                        const Expanded(child: SizedBox()),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'اسم الطالب',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 13.sp,
                              ),
                            ),
                            Text(
                              'الصف',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 13.sp,
                              ),
                            )
                          ],
                        ),
                        Image.asset(
                          'asset/1-14.png',
                          width: 12.w,
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 19.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                          image: AssetImage('asset/r.png'),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 1.5.w,
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(width: 2.w),
                        CircleAvatar(
                          radius: 1.5.w,
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(width: 2.w),
                        CircleAvatar(
                          radius: 1.5.w,
                          backgroundColor: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(height: 2.h),
                    Stack(
                      clipBehavior: Clip.hardEdge,
                      children: [
                        Image.asset(
                          'asset/1-12.png',
                        ),
                        Positioned(
                          right: 75,
                          bottom: 30,
                          child: Text(
                            'التعليم الاكتروني',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 0.5.h),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Image.asset(
                          'asset/1-11.png',
                        ),
                        Positioned(
                          right: 75,
                          bottom: 42,
                          child: Text(
                            'الامتحانات اليوميه',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3.h),
                    Expanded(
                      child: GridView.builder(
                        shrinkWrap: true,
                        clipBehavior: Clip.hardEdge,
                        itemCount: sectionsDate.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: 12.h,
                            crossAxisSpacing: 3.w,
                            childAspectRatio: 0.4,
                            crossAxisCount: 2,
                            mainAxisSpacing: 1.5.h),
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerLeft,
                                  colors: [
                                    SecondKD2,
                                    SecondKD1,
                                  ],
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 1,
                                    offset: Offset(1, 1), // Shadow position
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  sectionsDate[index].image.toString(),
                                  width: 20.w,
                                  height: 8.h,
                                ),
                                Text(
                                  sectionsDate[index].title.toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
