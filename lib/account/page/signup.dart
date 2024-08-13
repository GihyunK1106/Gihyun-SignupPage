import 'package:cds/common/component/custom_button.dart';
import 'package:flutter/material.dart';

import '../../common/component/custom_text_form_field.dart';
import '../../common/const/colors.dart';
import '../util/check_validate.dart';

class signup extends StatefulWidget {
  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final _houses = ['red', 'green', 'blue', 'yellow'];

  String _selected_house = "red";

  @override
  Widget build(BuildContext context) {
    final TextEditingController _nameController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    final FocusNode _nameFNode = FocusNode();
    final TextEditingController _emailController = TextEditingController();
    final FocusNode _emailFNode = FocusNode();
    final TextEditingController _PWController = TextEditingController();
    final FocusNode _PWFNode = FocusNode();
    final TextEditingController _PWConfirmController = TextEditingController();
    final FocusNode _PWConfirmFNode = FocusNode();

    const baseBorder = OutlineInputBorder(
        borderSide: BorderSide(
            color: Colors.black,
            width: 1.0
        )
    );
    return MaterialApp(
      home: Scaffold(
          backgroundColor: MAIN_COLOR,
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 50),
                  child: Image.asset('assets/images/Logo2.png'),
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontFamily: 'NTR',
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: TextFormField(
                    focusNode: _nameFNode,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'NTR',
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 3,
                        ),
                        borderRadius:  BorderRadius.circular(20.0),
                      ),
                      hintText: 'Enter Name',
                      fillColor: Colors.white,
                      filled: true
                    ),
                    controller: _nameController,
                    validator: (value) => CheckValidate().validateName(_nameFNode, value ?? ''),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: TextFormField(
                    focusNode: _emailFNode,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'NTR',
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 3,
                          ),
                          borderRadius:  BorderRadius.circular(20.0),
                        ),
                        hintText: 'Enter Email',
                        fillColor: Colors.white,
                        filled: true,
                    ),
                    controller: _emailController,
                    validator: (value) => CheckValidate().validateName(_emailFNode, value ?? ''),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.grey, width: 3),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: _selected_house,
                        icon: Icon(Icons.arrow_drop_down, color: Colors.blueAccent),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.black, fontSize: 18),
                        dropdownColor: Colors.white,
                        onChanged: (String? newValue) {
                          setState(() {
                            _selected_house = newValue!;
                          });
                        },
                        items: _houses.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: TextFormField(
                    focusNode: _PWFNode,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'NTR',
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 3,
                          ),
                          borderRadius:  BorderRadius.circular(20.0),
                        ),
                        hintText: 'Enter Password',
                        fillColor: Colors.white,
                        filled: true
                    ),
                    controller: _PWController,
                    validator: (value) => CheckValidate().validateName(_PWFNode, value ?? ''),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: TextFormField(
                    focusNode: _PWConfirmFNode,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'NTR',
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 3,
                          ),
                          borderRadius:  BorderRadius.circular(20.0),
                        ),
                        hintText: 'Confirm Password',
                        fillColor: Colors.white,
                        filled: true
                    ),
                    controller: _PWConfirmController,
                    validator: (value) => CheckValidate().validateName(_PWConfirmFNode, value ?? ''),
                  ),
                ),
                OutlinedButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    if(_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                    }
                  },
                  child: Text('Enter'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, bottom: 20),
                  child: Image.asset('assets/images/School.png'),
                ),
              ]
          )
      ),
    );
  }
}