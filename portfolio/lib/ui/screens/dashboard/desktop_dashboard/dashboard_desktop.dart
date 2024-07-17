import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              // Color(0xFF2954A3),
              Color(0xff28282B),
              // Color(0xFF0F103F),
              Color(0xff28282B)
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
                              color: const Color(0xff20C20E),
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
                              color: const Color(0xff20C20E),
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
                              color: const Color(0xff20C20E),
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
                              color: const Color(0xff20C20E),
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
                      color: const Color(0xff20C20E)
                          .withOpacity(0.1) //  Colors.white.withOpacity(0.2),
                      ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.home,
                          color: Colors.white,
                          // color: Color(0xFF0F103F),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.person,
                          color: Colors.white,
                          // color: Color(0xFF0F103F),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.work, color: Colors.white,
                          // color: Color(0xFF0F103F),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.call, color: Colors.white,
                          // color: Color(0xFF0F103F),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
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
                          child: Container(
                            color: Colors.transparent,
                            height: MediaQuery.sizeOf(context).height,
                            width: MediaQuery.sizeOf(context).width,
                            child: Padding(
                              padding: EdgeInsets.only(left: 30.r),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Hi,",
                                        style: TextStyle(
                                            fontSize: 50.r,
                                            color: const Color(0xff20C20E)),
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.baseline,
                                        textBaseline: TextBaseline.ideographic,
                                        children: [
                                          Text(
                                            "My name is",
                                            style: TextStyle(
                                                fontSize: 50.r,
                                                color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: 20.r,
                                          ),
                                          Text(
                                            "Manish",
                                            style: TextStyle(
                                                fontSize: 80.r,
                                                color: const Color(0xff20C20E)),
                                          ),
                                          Text(
                                            ".",
                                            style: TextStyle(
                                                fontSize: 50.r,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "I'm a",
                                        style: TextStyle(
                                            fontSize: 50.r,
                                            color: Colors.white),
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.baseline,
                                        textBaseline: TextBaseline.ideographic,
                                        children: [
                                          Text(
                                            "Flutter Developer",
                                            style: TextStyle(
                                                fontSize: 80.r,
                                                color: const Color(0xff20C20E)),
                                          ),
                                          Text(
                                            ".",
                                            style: TextStyle(
                                                fontSize: 50.r,
                                                color: Colors.white),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )),
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
