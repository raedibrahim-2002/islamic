import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/core/utilis/theme.dart';
import 'package:islami/features/settings/presentation/manager/providers/app_config_prov.dart';
import 'package:provider/provider.dart';

class ThemeBottomShet extends StatelessWidget {
  const ThemeBottomShet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      children: [
        InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: provider.isDark()
                ? getSelectedItemWidget(
                    context, AppLocalizations.of(context)!.dark)
                : getUnSelectedItemWidget(
                    context, AppLocalizations.of(context)!.dark)),
        InkWell(
          onTap: () {
            provider.changeTheme(ThemeMode.light);
            Navigator.pop(context);
          },
          child: !provider.isDark()
              ? getSelectedItemWidget(
                  context, AppLocalizations.of(context)!.light)
              : getUnSelectedItemWidget(
                  context, AppLocalizations.of(context)!.light),
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
                .copyWith(color: AppTheme.yellowColor),
          ),
          Icon(Icons.check, color: AppTheme.yellowColor)
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
          Text(text,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: AppTheme.blackColor)),
        ],
      ),
    );
  }
}
