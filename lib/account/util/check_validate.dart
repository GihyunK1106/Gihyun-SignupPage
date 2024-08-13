import 'package:flutter/material.dart';

class CheckValidate {
  String? validateName(FocusNode focusNode, String v) {
    if (v == null || v.isEmpty){
      focusNode.requestFocus();
      return 'input name';
    }
    return null;
  }

  String? validatePW(FocusNode focusNode, String v) {
    if (v == null || v.isEmpty){
      focusNode.requestFocus();
      return 'input password';
    }
    return null;
  }
}