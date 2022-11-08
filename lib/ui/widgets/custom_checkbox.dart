import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCheckBox extends StatelessWidget {
  Function(bool)? onTap;
  CustomCheckBox({Key? key, this.onTap}) : super(key: key);

  final _checkBoxController = StreamController<bool>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: _checkBoxController.stream,
      initialData: false,
      builder: (context, snapshot) {
        return GestureDetector(
          onTap: () {
            onTap != null ? onTap!(!snapshot.data!) : null;
            _checkBoxController.sink.add(!snapshot.data!);
          },
          child: Container(
            height: 21.h,
            width: 21.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.r),
              border: Border.all(
                width: 1,
                color: const Color.fromRGBO(206, 201, 189, 1),
              ),
            ),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              curve: Curves.easeInOutQuint,
              alignment: Alignment.center,
              width: 11.h,
              margin: EdgeInsets.all(5.h),
              height: 11.h,
              decoration: BoxDecoration(
                color: snapshot.data!
                    ? const Color.fromRGBO(186, 48, 59, 1)
                    : null,
                borderRadius: BorderRadius.circular(3.r),
              ),
            ),
          ),
        );
      },
    );
  }
}
