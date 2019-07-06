import 'package:flutter/material.dart';
import 'package:odisseia/tabs/base_tab.dart';

abstract class BaseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return BaseTab(getBody());
  }

  Widget getBody(){
    return null;
  }

}