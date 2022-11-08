import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String title;
  bool accent;
  final Function() onTap;
  bool enabled;
  CustomButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.enabled = true,
    this.accent = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            height: 64.h,
            width: 370.w,
            decoration: BoxDecoration(
              color: !accent ? const Color.fromRGBO(206, 201, 189, 1) : null,
              gradient: accent
                  ? const LinearGradient(
                      colors: [
                        Color.fromRGBO(186, 48, 59, 1),
                        Color.fromRGBO(206, 55, 66, 1),
                      ],
                      begin: FractionalOffset(0.0, 1.0),
                      end: FractionalOffset(0.0, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp,
                    )
                  : null,
              borderRadius: BorderRadius.circular(6.r),
              boxShadow: accent
                  ? const [
                      BoxShadow(
                        offset: Offset(0, 16),
                        blurRadius: 10,
                        spreadRadius: -11,
                        color: Color.fromRGBO(200, 53, 64, 0.38),
                      ),
                    ]
                  : null,
            ),
            child: Center(
              child: Text(
                title.toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Gilroy',
                  fontSize: 17.h,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          if (!enabled)
            Container(
              height: 64.h,
              width: 370.w,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.3),
                borderRadius: BorderRadius.circular(6.r),
              ),
            ),
        ],
      ),
    );
  }
}
