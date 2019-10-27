import 'package:flutter/material.dart';
import 'package:odisseia/utils/shared_utils.dart';
import 'package:odisseia/view/screens/login_screen.dart';

void main(){
SharedUtils.initialize();

runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "ODISSEIA",
  home: LoginScreen()
));
}
