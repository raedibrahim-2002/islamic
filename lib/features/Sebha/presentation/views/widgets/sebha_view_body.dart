import 'package:flutter/material.dart';
import 'package:islami/core/utilis/assets.dart';
import 'package:islami/core/utilis/theme.dart';
import 'package:islami/features/settings/presentation/manager/providers/app_config_prov.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaViewBody extends StatefulWidget {
  const SebhaViewBody({Key? key}) : super(key: key);

  @override
  _SebhaViewBodyState createState() => _SebhaViewBodyState();
}

class _SebhaViewBodyState extends State<SebhaViewBody> {
  int _counter = 0;
  double _rotationAngle = 0.0; // زاوية دوران المؤشر
  final List<String> _phrases = ["سبحان الله", "الحمد لله", "الله أكبر"];
  int _currentIndex = 0; // تتبع العبارة الحالية

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter > 33) {
        _counter = 1; // ابدأ العد من جديد
        _currentIndex = (_currentIndex + 1) % _phrases.length; // تبديل العبارة
      }
      // زاوية الدوران: تزيد مع الضغط
      _rotationAngle = (_counter / 33) * 360; // دورة كاملة 360 درجة
    });
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // الدائرة مع المؤشر
          Stack(
            alignment: Alignment.center,
            children: [
              // الدائرة الأساسية
              Container(
                height: MediaQuery.of(context).size.height * .3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(provider.isDark()
                          ? AssetsData.sebhaLogoDark
                          : AssetsData.sebhaLogo)),
                ),
              ),
              // المؤشر
              Transform.rotate(
                angle: _rotationAngle *
                    (3.14159 / 180), // تحويل الزاوية إلى راديان
                child: Container(
                  height: MediaQuery.of(context).size.height * .2,
                  // width: MediaQuery.of(context).size.width * 2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(provider.isDark()
                          ? AssetsData.headSebhaLogoDark
                          : AssetsData.headSebhaLogo),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          // عرض العبارة الحالية
          Text(
            _phrases[_currentIndex],
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 20),
          // عداد التسبيحات
          Text(
            "${AppLocalizations.of(context)!.number_of_praises} : $_counter",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 30),
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
                  AppLocalizations.of(context)!.remember_allah,
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
        ]),
      ),
    );
  }
}
