import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jewelry_shop/core/helpers/colors.dart';
import 'package:jewelry_shop/core/helpers/formatters.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  bool code;
  CustomTextField({
    Key? key,
    required this.title,
    this.code = false,
  }) : super(key: key);

  final _errorStreamController = StreamController<bool>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: _errorStreamController.stream,
        initialData: false,
        builder: (context, snapshot) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOutQuint,
            height: !snapshot.data! ? 59.h : 90.h,
            width: 368.w,
            child: Stack(
              children: [
                AnimatedAlign(
                  curve: Curves.easeInOutQuint,
                  alignment: Alignment.bottomLeft,
                  duration: const Duration(milliseconds: 100),
                  child: Text(
                    'код неверный. повторите ввод'.toUpperCase(),
                    style: TextStyle(
                      color: const Color.fromRGBO(186, 48, 59, 1),
                      fontFamily: 'Gilroy',
                      fontSize: 12.h,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  height: 59.h,
                  width: 368.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                      color: !snapshot.data!
                          ? accentColor
                          : const Color.fromRGBO(186, 48, 59, 1),
                    ),
                    borderRadius: BorderRadius.circular(3.r),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 21.w),
                        height: 59.h,
                        child: Center(
                          child: TextField(
                            cursorColor: !snapshot.data!
                                ? accentColor
                                : const Color.fromRGBO(186, 48, 59, 1),
                            onChanged: (value) {
                              if (value.length == 7 && code) {
                                if (value == '000 000') {
                                  _errorStreamController.sink.add(false);
                                } else {
                                  _errorStreamController.sink.add(true);
                                }
                              } else {
                                _errorStreamController.sink.add(false);
                              }
                            },
                            inputFormatters: [
                              if (code) FilteringTextInputFormatter.digitsOnly,
                              if (code) CustomInputFormatter(),
                            ],
                            style: TextStyle(
                              color: !snapshot.data!
                                  ? const Color.fromRGBO(169, 162, 144, 1)
                                  : const Color.fromRGBO(186, 48, 59, 1),
                              fontFamily: 'Gilroy',
                              fontSize: 14.h,
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.w600,
                            ),
                            decoration: InputDecoration.collapsed(
                              hintText: title.toUpperCase(),
                              hintStyle: const TextStyle(
                                color: Color.fromRGBO(169, 162, 144, 1),
                                fontFamily: 'Gilroy',
                                fontSize: 14,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      AnimatedOpacity(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOutQuint,
                        opacity: snapshot.data! ? 1 : 0,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 12.h),
                            child: Text(
                              '!',
                              style: TextStyle(
                                color: const Color.fromRGBO(186, 48, 59, 1),
                                fontFamily: 'Gilroy',
                                fontSize: 23.h,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
