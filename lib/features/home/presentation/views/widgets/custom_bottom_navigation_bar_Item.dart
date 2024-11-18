import 'package:flutter/material.dart';

BottomNavigationBarItem customBottomNavigationBarItem(
    {required String iconBottomImageName, required String labelName}) {
      
  return BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage(
          iconBottomImageName,
        ),
      ),
      label: labelName);
}
