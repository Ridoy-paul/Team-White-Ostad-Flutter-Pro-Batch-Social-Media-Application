//
// import 'package:flutter/material.dart';
//
// class InputTextFields{
//   //change the state_holder file name as per work requirement..
//  static Widget passwordInputTextField(BuildContext context,passwordVisible,) {
//     return TextFormField(
//       obscureText: !passwordVisible,
//       decoration: InputDecoration(
//         prefixIcon: const Icon(Icons.lock_outline),
//         hintText: "Input Email",
//         suffixIcon: IconButton(
//           icon: Icon(
//             // Based on passwordVisible state choose the icon
//             passwordVisible
//                 ? Icons.visibility_outlined
//                 : Icons.visibility_off_outlined,
//             color: Theme.of(context).colorScheme.onPrimaryContainer,
//           ),
//           onPressed: () {
//             //Toggle the state of passwordVisible variable
//             setState(() {
//               passwordVisible = !passwordVisible;
//             });
//           },
//         ),
//       ),
//     );
//   }
// }