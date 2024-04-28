import 'package:flutter/material.dart';

class AppTextFormField {
  static Widget textFormField({prefixIcon, hintText}){
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        hintText: hintText,
      ),
    );}
}