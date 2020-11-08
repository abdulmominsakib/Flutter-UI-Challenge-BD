import 'package:flutter/material.dart';

const kHeaderStyle = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
);

class InputOfForm extends StatelessWidget {
  InputOfForm({
    this.hintText,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText,
    this.onTap,
  });
  final String hintText;
  final Icon suffixIcon;
  final Function onTap;
  final keyboardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap ?? null,
      obscureText: obscureText ?? false,
      keyboardType: keyboardType ?? null,
      style: TextStyle(),
      cursorColor: Colors.purple,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(18)),
          borderSide: BorderSide(width: 0, color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(18)),
          borderSide: BorderSide(width: 1, color: Colors.deepPurple),
        ),
        filled: true,
        fillColor: Color(0xFFEDEDED),
        suffixIcon: suffixIcon,
        hintText: hintText ?? null,
        contentPadding: EdgeInsets.all(10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(18)),
          borderSide: BorderSide(width: 0, color: Colors.transparent),
        ),
      ),
    );
  }
}

class SubmitButtonStyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Text(
        'Register',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ),
      padding: EdgeInsets.all(10),
      width: double.maxFinite,
      height: 45,
    );
  }
}
