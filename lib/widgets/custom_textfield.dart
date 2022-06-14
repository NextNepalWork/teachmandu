import 'package:e_learning/constant/my_color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hint;
  final bool? issecured;
  final IconData? iconData;
  final TextInputType? inputType;
  final double? left;
  final double? right;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;

  const CustomTextField(
      {Key? key,
      this.hint,
      this.issecured,
      this.iconData,
      this.inputType,
      this.left,
      this.controller,
      this.validator,
      this.right})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: left!, right: right!),
        child: TextFormField(
          controller: controller,
          validator: validator,
          keyboardType: inputType,
          obscureText: issecured!,
          cursorColor: Theme.of(context).primaryColor,
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
              prefixIcon: iconData != null ? Icon(iconData!) : const SizedBox(),
              disabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: hint,
              hintStyle: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
              filled: true,
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              fillColor: MyColor.textFormbackground,
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(10),
              )),
        ));
  }
}
