import 'package:cds/account/page/signup.dart';
import 'package:cds/common/component/custom_button.dart';
import 'package:cds/common/component/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../common/const/colors.dart';
import '../util/check_validate.dart';

void main() {
  runApp(
      MaterialApp(
        home: LoginPage(),
      )
  );
}

// class Splash extends StatelessWidget {
//   const Splash({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 250),
//               child: Image.asset('assets/images/Logo1.png'),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 50, right: 50, bottom: 50),
//               child: Image.asset('assets/images/Logo2.png'),
//             )
//           ]
//         )
//       ),
//     );
//   }
// }

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    final TextEditingController _nameController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    final FocusNode _nameFNode = FocusNode();

    final TextEditingController _PWController = TextEditingController();
    final FocusNode _PWFNode = FocusNode();
    const baseBorder = OutlineInputBorder(
        borderSide: BorderSide(
            color: Colors.black,
            width: 1.0
        )
    );
    return MaterialApp(
      home: Scaffold(
          backgroundColor: MAIN_COLOR,
          body: Form(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
                    child: Image.asset('assets/images/Logo2.png'),
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'NTR',
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: TextFormField(
                      focusNode: _nameFNode,
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
                          filled: true
                      ),
                      controller: _nameController,
                      validator: (value) => CheckValidate().validateName(_nameFNode, value ?? ''),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: TextFormField(
                      focusNode: _PWFNode,
                      keyboardType: TextInputType.visiblePassword,
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
                  OutlinedButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                    },
                    child: Text('Enter'),
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: ()async {
                      // if(_formKey.currentState!.validate()) {
                      //   _formKey.currentState!.save();
                      // }
                      Navigator.push(context, MaterialPageRoute(builder: (context) => signup()));
                    },
                    child: Text('Signup'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100, right: 100, bottom: 20),
                    child: Image.asset('assets/images/School.png'),
                  ),
                ],
            ),
          )
      ),
    );
  }
}