import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jewelry_shop/core/helpers/colors.dart';
import 'package:jewelry_shop/ui/auth/create_account.dart';
import 'package:jewelry_shop/ui/auth/phone.dart';
import 'package:jewelry_shop/ui/widgets/button.dart';
import 'package:jewelry_shop/ui/widgets/text_field.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // backgroundColor: Color.fromRGBO(249, 249, 249, 1),
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
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
                  SizedBox(height: 100.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 71.w),
                    child: Image.asset(
                      'assets/logo.png',
                      width: 222.h,
                      height: 87.h,
                    ),
                  ),
                  SizedBox(height: 56.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23.w),
                    child: Text(
                      'войдите для получения эксклюзивных скидок и бонусов'
                          .toUpperCase(),
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Gilroy',
                        fontSize: 15.h,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  CustomTextField(title: 'введите номер телефона'),
                  SizedBox(height: 11.h),
                  CustomButton(
                    title: 'войти',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PhonePage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 32.h),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CreateAccountPage(),
                          ),
                        );
                      },
                      splashColor: accentColor.withOpacity(0.2),
                      highlightColor: accentColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(5.r),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 3),
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
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 98.h,
                margin: EdgeInsets.only(bottom: 102.h),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 13.w),
                      child: Text(
                        'версия приложения 1.0232.23-01'.toUpperCase(),
                        style: TextStyle(
                          color: const Color.fromRGBO(206, 201, 189, 1),
                          fontFamily: 'Gilroy',
                          fontSize: 12.h,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    CustomButton(
                      title: 'пропустить',
                      onTap: () {},
                      accent: false,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 89.5.h,
                child: Column(
                  children: [
                    Container(
                      height: 0.5.h,
                      color: const Color.fromRGBO(198, 198, 200, 1),
                    ),
                    Container(
                      height: 89.h,
                      padding: EdgeInsets.only(top: 11.5.h),
                      color: Color.fromRGBO(249, 249, 249, 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _bottomNavIcon(
                              'Главная', 'assets/apps.svg', 27.h, 27.h),
                          _bottomNavIcon(
                              'Категории', 'assets/chain.svg', 33.h, 37.h),
                          _bottomNavIcon(
                              'Главная', 'assets/heart.svg', 31.h, 27.65.h),
                          _bottomNavIcon(
                              'Главная', 'assets/bag.svg', 28.15.h, 28.42.h),
                          _bottomNavIcon(
                              'Главная', 'assets/account.svg', 30.h, 29.98.h),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _bottomNavIcon(
      String title, String asset, double height, double width) {
    return SizedBox(
      height: 50.h,
      width: 75.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              width: width, height: height, child: SvgPicture.asset(asset)),
          Text(
            title,
            style: TextStyle(fontSize: 11.h),
          ),
        ],
      ),
    );
  }
}
