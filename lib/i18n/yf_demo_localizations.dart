import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'yf_demo_message_all.dart';

class YFDemoLocalizations {
  static YFDemoLocalizations of(BuildContext context) {
    return Localizations.of<YFDemoLocalizations>(
      context,
      YFDemoLocalizations
    );
  }

  static Future<YFDemoLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return YFDemoLocalizations();
    });
  }
  
  String get title => Intl.message(
    'hello',
    name: 'title',
    desc: 'demo localizations.',
  );

  String greet(String name) => Intl.message(
    'hello $name',
    name: 'greet',
    desc: 'greet someone.',
    args: [name],
  );
}

class YFDemoLocalizationsDelegate
    extends LocalizationsDelegate<YFDemoLocalizations> {
  YFDemoLocalizationsDelegate();

  @override
  Future<YFDemoLocalizations> load(Locale locale) {
    return YFDemoLocalizations.load(locale);
  }

  @override
  bool isSupported(Locale locale) {
    return true;
  }

  @override
  bool shouldReload(LocalizationsDelegate<YFDemoLocalizations> old) {
    return false;
  }
}