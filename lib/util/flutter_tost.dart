import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void flutterTost(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.black54,
    textColor: Colors.white,
  );
}
