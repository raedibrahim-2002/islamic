import 'package:flutter/material.dart';
import 'package:islami/core/utilis/app_routes.dart';
import 'package:islami/core/utilis/theme.dart';
import 'package:islami/features/hadeth/presentation/views/widgets/hadeth_view_body.dart';
import 'package:islami/features/settings/presentation/manager/providers/app_config_prov.dart';
import 'package:provider/provider.dart';

class HadethNameItem extends StatelessWidget {
  const HadethNameItem({super.key, required this.hadethData});
  final HadethData hadethData;
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(AppRoutes.hadethDetailsRouteName, arguments: hadethData);
      },
      child: Text(
        hadethData.title,
        style: provider.isDark()
            ? Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: AppTheme.whiteColor)
            : Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
