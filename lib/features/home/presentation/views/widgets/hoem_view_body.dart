import 'package:flutter/material.dart';
import 'package:islami/core/utilis/assets.dart';
import 'package:islami/features/Sebha/presentation/views/sebha_view.dart';
import 'package:islami/features/hadeth/presentation/views/hadeth_view.dart';
import 'package:islami/features/home/presentation/views/widgets/custom_bottom_navigation_bar_Item.dart';
import 'package:islami/features/quran/presentation/views/quran_view.dart';
import 'package:islami/features/radio/presentation/views/radio.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/features/settings/presentation/manager/providers/app_config_prov.dart';
import 'package:islami/features/settings/presentation/views/setting_view.dart';
import 'package:provider/provider.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [
        provider.isDark()
            ? Image.asset(
                AssetsData.homeBackgroundDark,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              )
            : Image.asset(
                AssetsData.homeBackground,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.app_name,
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
                    labelName: AppLocalizations.of(context)!.quran),
                customBottomNavigationBarItem(
                    iconBottomImageName: AssetsData.iconHadeth,
                    labelName: AppLocalizations.of(context)!.hadeth),
                customBottomNavigationBarItem(
                    iconBottomImageName: AssetsData.iconSebha,
                    labelName: AppLocalizations.of(context)!.sebha),
                customBottomNavigationBarItem(
                    iconBottomImageName: AssetsData.iconRadio,
                    labelName: AppLocalizations.of(context)!.radio),
                BottomNavigationBarItem(
                    icon: const Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.settings)
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
    const Hadethview(),
    const SebhaView(),
    const RadioView(),
    const SettingView()
  ];
}
