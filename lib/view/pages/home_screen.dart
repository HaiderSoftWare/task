import 'package:flutter/material.dart';

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
                padding: const EdgeInsets.only(top: 40, right: 10, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'asset/1-13.png',
                          width: 60,
                        ),
                        const Expanded(child: SizedBox()),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              'اسم الطالب',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              'الصف',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                        Image.asset(
                          'asset/1-14.png',
                          width: 60,
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                          image: AssetImage('asset/r.png'),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 6,
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(width: 10),
                        CircleAvatar(
                          radius: 6,
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(width: 10),
                        CircleAvatar(
                          radius: 6,
                          backgroundColor: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Stack(
                      clipBehavior: Clip.hardEdge,
                      children: [
                        Image.asset(
                          'asset/1-12.png',
                        ),
                        const Positioned(
                          right: 75,
                          bottom: 30,
                          child: Text(
                            'التعليم الاكتروني',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Image.asset(
                          'asset/1-11.png',
                        ),
                        const Positioned(
                          right: 75,
                          bottom: 42,
                          child: Text(
                            'الامتحانات اليوميه',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Expanded(
                      child: GridView.builder(
                        shrinkWrap: true,
                        clipBehavior: Clip.hardEdge,
                        itemCount: sectionsDate.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: 100,
                                crossAxisSpacing: 20,
                                childAspectRatio: 0.4,
                                crossAxisCount: 2,
                                mainAxisSpacing: 20),
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
                                  width: 100,
                                  height: 70,
                                ),
                                Text(
                                  sectionsDate[index].title.toString(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
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
