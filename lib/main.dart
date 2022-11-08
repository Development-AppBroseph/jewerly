import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jewelry_shop/ui/auth/auth.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenUtilInit(
          designSize: const Size(414, 896),
          builder: (context, child) => AuthPage()),
    ),
  );
}
