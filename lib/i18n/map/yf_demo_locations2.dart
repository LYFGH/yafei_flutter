import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/material.dart';

class YFDemoLocalizations {
  final Locale locale;

  YFDemoLocalizations(this.locale);

  static YFDemoLocalizations of(BuildContext context) {
    return Localizations.of<YFDemoLocalizations>(
      context,
      YFDemoLocalizations
    );
  }

  static Map<String, Map<String, String>> _localized = {
    'en': {
      'title': 'hello',
    },
    'zh': {
      'title': '您好',
    }
  };

  String get title {
    return _localized[locale.languageCode]['title'];
  }
}

class YFDemoLocalizationsDelegate
    extends LocalizationsDelegate<YFDemoLocalizations> {
  YFDemoLocalizationsDelegate();

  @override
  Future<YFDemoLocalizations> load(Locale locale) {
    return SynchronousFuture<YFDemoLocalizations>(
        YFDemoLocalizations(locale));
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
