import 'package:flutter/material.dart';
import 'package:islami/core/utilis/assets.dart';
import 'package:islami/features/Sebha/presentation/views/sebha.dart';
import 'package:islami/features/hadeth/presentation/views/hadeth.dart';
import 'package:islami/features/home/presentation/views/widgets/custom_bottom_navigation_bar_Item.dart';
import 'package:islami/features/quran/presentation/views/quran.dart';
import 'package:islami/features/radio/presentation/views/radio.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AssetsData.homeBackground,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "Islamic",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (value) {
                selectedIndex = value;
                setState(() {});
              },
              items: [
                customBottomNavigationBarItem(
                    iconBottomImageName: AssetsData.iconQuran,
                    labelName: "Quran"),
                customBottomNavigationBarItem(
                    iconBottomImageName: AssetsData.iconHadeth,
                    labelName: "Hadeth"),
                customBottomNavigationBarItem(
                    iconBottomImageName: AssetsData.iconSebha,
                    labelName: "Sebha"),
                customBottomNavigationBarItem(
                    iconBottomImageName: AssetsData.iconRadio,
                    labelName: "Radio"),
              ],
            ),
          ),
          body: tabs[selectedIndex],
        )
      ],
    );
  }

  List<Widget> tabs = [
    const QuranView(),
    const Hadeyhiew(),
    const SebhaView(),
    const RadioView()
  ];
}
