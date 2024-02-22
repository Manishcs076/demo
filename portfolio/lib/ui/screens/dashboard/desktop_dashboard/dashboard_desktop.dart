import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rive/rive.dart' as rive;
import 'dart:math' as math;

class DashboardDesktop extends StatelessWidget {
  const DashboardDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: const Alignment(1.0, -0.5),
            colors: const [
              Color(0xFF2954A3),
              Color(0xFF0F103F),
            ],
            radius: 1.0.r,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.transparent,
                    height: 50.h,
                    width: MediaQuery.sizeOf(context).width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Home',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 4.5.sp,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'About me',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 4.5.sp,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Work',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 4.5.sp,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Contact',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 4.5.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // margin: EdgeInsets.only(
                  //   top: MediaQuery.sizeOf(context).height / 5,
                  //   bottom: MediaQuery.sizeOf(context).height / 5,
                  // ),
                  padding: EdgeInsets.all(20.r),
                  width: 20.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                        50.r,
                      ),
                      bottomRight: Radius.circular(
                        50.r,
                      ),
                    ),
                    color: Colors.white.withOpacity(0.2),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        height: 20.h,
                        child: const rive.RiveAnimation.asset(
                          "assets/rive/home.riv",
                        ),
                      ),
                      // IconButton(
                      //   onPressed: () {},
                      //   icon: const Icon(
                      //     Icons.home,
                      //     color: Colors.white,
                      //     // Color(0xFF0F103F),
                      //   ),
                      // ),
                      SizedBox(
                        height: 20.h,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.person,
                          color: Colors.white,
                          // color: Color(0xFF0F103F),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.work, color: Colors.white,
                          // color: Color(0xFF0F103F),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.call, color: Colors.white,
                          // color: Color(0xFF0F103F),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search, color: Colors.white,
                          // color: Color(0xFF0F103F),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.sizeOf(context).height.h,
                    color: Colors.transparent,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 18.r,
                          left: 18.r,
                          right: 18.r,
                        ),
                        child:
                            //  Container(child: ,)
                            ListView.builder(
                                itemCount: 2000,
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, index) {
                                  return Container(
                                    height: 50.h,
                                    color: index % 2 == 0
                                        ? Color.fromARGB(
                                            math.Random().nextInt(255),
                                            math.Random().nextInt(255),
                                            math.Random().nextInt(255),
                                            math.Random().nextInt(255),
                                          )
                                        : Color.fromARGB(
                                            math.Random().nextInt(255),
                                            math.Random().nextInt(255),
                                            math.Random().nextInt(255),
                                            math.Random().nextInt(255),
                                          ),
                                  );
                                }),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
