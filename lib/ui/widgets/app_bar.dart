import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar {
  final String title;
  final BuildContext context;

  CustomAppBar(this.context, {required this.title});

  AppBar appBar() {
    return AppBar(
      toolbarHeight: 106.h,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      automaticallyImplyLeading: false,
      elevation: 0,
      // actions: [
      //   SizedBox(
      //     width: double.infinity,
      //     child: Align(
      //       alignment: Alignment.centerLeft,
      //       child: SvgPicture.asset('assets/back.svg'),
      //     ),
      //   )
      // ],
      title: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: SvgPicture.asset(
                  'assets/back.svg',
                  width: 25.19.h,
                  height: 25.19.h,
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Gilroy',
                fontSize: 21.h,
                letterSpacing: 0.3,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
