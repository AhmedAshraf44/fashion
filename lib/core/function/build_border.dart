import 'package:fason_app/constants.dart';
import 'package:flutter/material.dart';

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
      borderSide: const BorderSide(
        color: kViolateColor,
      ),
      borderRadius: BorderRadius.circular(15));
}
