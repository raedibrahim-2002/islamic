import 'package:flutter/material.dart';
import 'package:islami/core/utilis/assets.dart';

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
        Image.asset(AssetsData.homeBackground),
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
                items: const [
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage(
                          AssetsData.iconQuran,
                        ),
                      ),
                      label: "Quran"),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage(
                          AssetsData.iconHadeth,
                        ),
                      ),
                      label: "Hadeth"),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage(
                          AssetsData.iconSebha,
                        ),
                      ),
                      label: "Sebha"),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage(
                          AssetsData.iconRadio,
                        ),
                      ),
                      label: "Radio"),
                ]),
          ),
        )
      ],
    );
  }
}
