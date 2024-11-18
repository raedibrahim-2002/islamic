import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/features/settings/presentation/manager/providers/app_config_prov.dart';
import 'package:provider/provider.dart';

class LanguageBottomShet extends StatelessWidget {
  const LanguageBottomShet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      children: [
        InkWell(
            onTap: () {
              provider.changelanguage("en");
              Navigator.pop(context);
            },
            child: provider.appLanguage == "en"
                ? getSelectedItemWidget(
                    context, AppLocalizations.of(context)!.english)
                : getUnSelectedItemWidget(
                    context, AppLocalizations.of(context)!.english)),
        InkWell(
          onTap: () {
            provider.changelanguage("ar");
            Navigator.pop(context);
          },
          child: provider.appLanguage == "ar"
              ? getSelectedItemWidget(
                  context, AppLocalizations.of(context)!.arabic)
              : getUnSelectedItemWidget(
                  context, AppLocalizations.of(context)!.arabic),
        ),
      ],
    );
  }

  Widget getSelectedItemWidget(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Theme.of(context).primaryColor),
          ),
          Icon(Icons.check, color: Theme.of(context).primaryColor)
        ],
      ),
    );
  }

  Widget getUnSelectedItemWidget(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: Theme.of(context).textTheme.titleMedium!),
        ],
      ),
    );
  }
}
