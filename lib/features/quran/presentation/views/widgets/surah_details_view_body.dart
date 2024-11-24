import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:islami/core/utilis/assets.dart';
import 'package:islami/core/utilis/theme.dart';
import 'package:islami/core/utilis/widgets/customDivider.dart';
import 'package:islami/features/quran/presentation/views/widgets/aya_item.dart';
import 'package:islami/features/quran/presentation/views/widgets/surah_name_item.dart';
import 'package:islami/features/settings/presentation/manager/providers/app_config_prov.dart';
import 'package:provider/provider.dart';

class SurahDetailsViewBody extends StatefulWidget {
  const SurahDetailsViewBody({super.key, required this.surahDetailsArgs});

  final SurahDetailsArgs surahDetailsArgs;

  @override
  State<SurahDetailsViewBody> createState() => _SurahDetailsViewBodyState();
}

class _SurahDetailsViewBodyState extends State<SurahDetailsViewBody> {
  List verses = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    if (verses.isEmpty) {
      loadFiles(widget.surahDetailsArgs.index);
    }
    return Stack(children: [
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
            widget.surahDetailsArgs.name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: verses.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : Container(
                margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * .08,
                    horizontal: MediaQuery.of(context).size.width * .06),
                decoration: BoxDecoration(
                  color: provider.isDark()
                      ? AppTheme.primaryDark
                      : AppTheme.whiteColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const CustomDivider(divideValue: .5);
                  },
                  itemBuilder: (context, index) => AyaItem(
                    ayatext: verses[index],
                    index: index,
                  ),
                  itemCount: verses.length,
                ),
              ),
      )
    ]);
  }

  void loadFiles(int index) async {
    String content =
        await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = content.split("\n");
    verses = lines;
    setState(() {});
  }
}
