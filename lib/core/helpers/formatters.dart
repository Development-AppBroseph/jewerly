import 'package:flutter/services.dart';

class CustomInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text;

    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    if (text.length == 7) {
      return oldValue;
    }

    var buffer = StringBuffer();
    if (text.length <= 6) {
      for (int i = 0; i < text.length; i++) {
        buffer.write(text[i]);
        var nonZeroIndex = i + 1;
        if (nonZeroIndex % 3 == 0 && nonZeroIndex != text.length && i < 5) {
          buffer.write(' ');
        } else if (nonZeroIndex % 2 == 0 &&
            nonZeroIndex != text.length &&
            i >= 5) {
          buffer.write(' ');
        }
      }
    }

    var string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: TextSelection.collapsed(offset: string.length));
  }
}
