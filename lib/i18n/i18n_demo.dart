import 'package:flutter/material.dart';
// import 'package:ninghao_flutter/demo/i18n/map/ninghao_demo_localizations.dart';
import 'yf_demo_localizations.dart';

class I18nDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Locale locale = Localizations.localeOf(context);
    
    return Scaffold(
      appBar: AppBar(
        title: Text('I18nDemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(locale.toString()),
            Text(
              // Localizations.of(context, YFDemoLocalizations).title,
              // YFDemoLocalizations.of(context).title,
              YFDemoLocalizations.of(context).greet('YF'),
              style: Theme.of(context).textTheme.title,
            )
          ],
        ),
      )
    );
  }
}