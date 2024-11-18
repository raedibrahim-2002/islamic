import 'package:flutter/material.dart';
import 'package:islami/core/utilis/theme.dart';
import 'package:islami/features/settings/presentation/manager/providers/app_config_prov.dart';
import 'package:provider/provider.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key, required this.divideValue,
  });
  final double divideValue;

  @override
  Widget build(BuildContext context) {
        var provider = Provider.of<AppConfigProvider>(context);

    return Divider(
                  color: provider.isDark()
                      ? AppTheme.yellowColor
                      : Theme.of(context).primaryColor,
                  thickness: divideValue,
                );
  }
}