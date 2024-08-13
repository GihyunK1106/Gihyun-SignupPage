import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../const/colors.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  const CustomTextField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
      var baseBorder = OutlineInputBorder(
      borderRadius:  BorderRadius.circular(20.0),
      borderSide: BorderSide(
        color: Colors.black,
        width: 1.0
      )
    );
    return TextFormField(
      cursorColor: MAIN_COLOR,
      decoration: InputDecoration(
        border: baseBorder,
        contentPadding: EdgeInsets.all(20),
        hintText: '$hintText',
        hintStyle: TextStyle(
          fontFamily: 'NTR',
          fontSize: 20
        ),
        fillColor: Colors.white,
        filled: true
      ),
    );
  }
}
