import 'package:flutter/material.dart';
import 'package:islami/core/utilis/assets.dart';
import 'package:islami/core/utilis/theme.dart';
import 'package:islami/features/hadeth/presentation/views/widgets/hadeth_item.dart';
import 'package:islami/features/hadeth/presentation/views/widgets/hadeth_view_body.dart';

class HadethDetailsViewBody extends StatelessWidget {
const  HadethDetailsViewBody({
    super.key,
    required this.hadethData,
  });

 final HadethData hadethData;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        AssetsData.homeBackground,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            hadethData.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * .04,
              horizontal: MediaQuery.of(context).size.width * .06),
          decoration: BoxDecoration(
            color: AppTheme.whiteColor,
            borderRadius: BorderRadius.circular(25),
          ),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: HadethItem(hadethData: hadethData.content[index]),
              );
            },
            itemCount: hadethData.content.length,
          ),
        ),
      )
    ]);
  }
}
