import 'package:flutter/material.dart';
import 'package:islami/core/utilis/assets.dart';

class RadioViewBody extends StatelessWidget {
  const RadioViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [Image.asset(AssetsData.radioLogo)],
      ),
    );
  }
}
