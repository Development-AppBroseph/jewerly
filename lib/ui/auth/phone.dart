import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jewelry_shop/core/helpers/colors.dart';
import 'package:jewelry_shop/ui/widgets/button.dart';
import 'package:jewelry_shop/ui/widgets/text_field.dart';

class PhonePage extends StatelessWidget {
  const PhonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 22.w, right: 22.w),
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 71.w, top: 86.h, right: 71.h),
                    child: Image.asset(
                      'assets/logo.png',
                      width: 155.44.h,
                      height: 61.h,
                    ),
                  ),
                  SizedBox(height: 56.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23.w),
                    child: const Text(
                      'На ваш номер телефона был отправлен код подтверждения для входа в аккаунт.',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Gilroy',
                        fontSize: 18,
                        letterSpacing: 0.3,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 23.w, vertical: 20.h),
                    child: Text(
                      'Пожалуйста, введите код в поле ниже'.toUpperCase(),
                      style: TextStyle(
                        color: const Color.fromRGBO(169, 162, 144, 1),
                        fontFamily: 'Gilroy',
                        fontSize: 14.h,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  CustomTextField(title: '', code: true),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 27.h),
                      child: Text(
                        'повторная отправка: 10:45'.toUpperCase(),
                        style: TextStyle(
                          color: const Color.fromRGBO(206, 201, 189, 1),
                          fontFamily: 'Gilroy',
                          fontSize: 14.h,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 12.h),
                      child: Text(
                        'не приходит код?'.toUpperCase(),
                        style: TextStyle(
                          color: const Color.fromRGBO(186, 48, 59, 1),
                          fontFamily: 'Gilroy',
                          fontSize: 14.h,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 27.h),
                  CustomButton(
                    title: 'войти',
                    onTap: () {},
                    enabled: false,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 38.h),
                child: InkWell(
                  onTap: () {},
                  splashColor: accentColor.withOpacity(0.2),
                  highlightColor: accentColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(5.r),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 3),
                    child: Text(
                      'создать аккаунт'.toUpperCase(),
                      style: TextStyle(
                        color: const Color.fromRGBO(169, 162, 144, 1),
                        fontFamily: 'Gilroy',
                        fontSize: 17.h,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
