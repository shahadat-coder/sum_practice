import 'package:flutter/material.dart';

InputDecoration AppInputStyle(labelText){
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    fillColor: Colors.white,
    filled: true,
    border: OutlineInputBorder(),
    labelText: labelText,
  );
}
