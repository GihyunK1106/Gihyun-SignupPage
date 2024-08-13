import 'package:cds/account/page/login.dart';
import 'package:cds/common/component/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'common/const/colors.dart';

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

