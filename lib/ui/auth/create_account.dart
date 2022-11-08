import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jewelry_shop/core/helpers/colors.dart';
import 'package:jewelry_shop/ui/auth/phone.dart';
import 'package:jewelry_shop/ui/widgets/app_bar.dart';
import 'package:jewelry_shop/ui/widgets/button.dart';
import 'package:jewelry_shop/ui/widgets/custom_checkbox.dart';
import 'package:jewelry_shop/ui/widgets/text_field.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: CustomAppBar(context, title: 'Создание аккаунта').appBar(),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(
              children: [
                Column(
                  children: [
                    SizedBox(height: 181.h),
                    CustomTextField(title: 'введите номер телефона'),
                    SizedBox(height: 19.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 22.h),
                        CustomCheckBox(onTap: (tapped) {}),
                        SizedBox(width: 13.h),
                        Expanded(
                          child: Text(
                            'Я согласен с пользовательским соглашением и условиями продажи'
                                .toUpperCase(),
                            maxLines: 4,
                            style: TextStyle(
                              color: const Color.fromRGBO(169, 162, 144, 1),
                              fontFamily: 'Gilroy',
                              fontSize: 12.h,
                              height: 1.7,
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(width: 89.h),
                      ],
                    ),
                    SizedBox(height: 34.h),
                    CustomButton(
                        title: 'подтвердить номер',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PhonePage(),
                            ),
                          );
                        }),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 97.h),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  splashColor: accentColor.withOpacity(0.2),
                  highlightColor: accentColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(5.r),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 3),
                    child: Text(
                      'уже есть аккаунт? войти'.toUpperCase(),
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
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 25.h),
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
            ),
          ],
        ),
      ),
    );
  }
}
