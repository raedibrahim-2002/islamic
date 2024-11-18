import 'package:flutter/material.dart';
import 'package:islami/core/utilis/assets.dart';
import 'package:islami/core/utilis/theme.dart';
import 'package:islami/features/settings/presentation/manager/providers/app_config_prov.dart';
import 'package:provider/provider.dart';

class SebhaViewBody extends StatefulWidget {
  const SebhaViewBody({super.key});

  @override
  _SebhaViewBodyState createState() => _SebhaViewBodyState();
}

class _SebhaViewBodyState extends State<SebhaViewBody> {
  int _counter = 0;
  int _currentIndex = 0;
  final List<String> _phrases = ["سبحان الله", "الحمد لله", "الله أكبر"];

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter > 30) {
        _counter = 0;
        _currentIndex = (_currentIndex + 1) % _phrases.length;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 90,
          ),
          Image.asset(
            AssetsData.sebhaLogoDark,
            width: 250,
            height: 250,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            "عدد التسبيحات",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "$_counter",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontSize: 20),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: _incrementCounter,
            child: Container(
              decoration: BoxDecoration(
                color: provider.isDark()
                    ? AppTheme.yellowColor
                    : Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text(
                  _phrases[_currentIndex],
                  style: provider.isDark()
                      ? Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: AppTheme.blackColor)
                      : Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
