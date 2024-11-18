import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/utilis/assets.dart';
import 'package:islami/core/utilis/theme.dart';
import 'package:islami/core/utilis/widgets/customDivider.dart';
import 'package:islami/features/hadeth/presentation/views/widgets/hadeth_name_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/features/settings/presentation/manager/providers/app_config_prov.dart';
import 'package:provider/provider.dart';

class HadethViewBody extends StatefulWidget {
  const HadethViewBody({super.key});

  @override
  State<HadethViewBody> createState() => _HadethViewBodyState();
}

class _HadethViewBodyState extends State<HadethViewBody> {
  List<HadethData> verses = [];
  @override
  void initState() {
    loadAhadethFile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    if (verses.isEmpty) {
      loadAhadethFile();
    }
    return Center(
      child: Column(
        children: [
          Expanded(flex: 1, child: Image.asset(AssetsData.hadethLogo)),
          Divider(
            color: provider.isDark()
                ? AppTheme.yellowColor
                : Theme.of(context).primaryColor,
            thickness: 3,
          ),
          Text(
            AppLocalizations.of(context)!.hadeth_name,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Divider(
            color: provider.isDark()
                ? AppTheme.yellowColor
                : Theme.of(context).primaryColor,
            thickness: 3,
          ),
          verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ))
              : Expanded(
                  flex: 2,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const CustomDivider(divideValue: .3);
                    },
                    itemCount: verses.length,
                    itemBuilder: (context, index) {
                      return HadethNameItem(hadethData: verses[index]);
                    },
                  ),
                )
        ],
      ),
    );
  }

  void loadAhadethFile() async {
    String allAhadethContent =
        await rootBundle.loadString("assets/files/ahadeth.txt");

    List<String> ahadethList = allAhadethContent.split("#\r\n");

    for (int i = 0; i < ahadethList.length; i++) {
      List<String> hadethLines = ahadethList[i].split("\n");
      String title = hadethLines[0];
      hadethLines.removeAt(0);

      HadethData hadethData = HadethData(title: title, content: hadethLines);
      verses.add(hadethData);
      setState(() {});
    }
  }
}

class HadethData {
  String title;
  List<String> content;

  HadethData({required this.title, required this.content});
}
