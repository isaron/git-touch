import 'dart:convert';

import 'package:path/path.dart' as p;

extension MyString<T extends String> on String {
  int get toInt => int.parse(this);
  String get urlencode => Uri.encodeComponent(this);
  String get urldecode => Uri.decodeComponent(this);
  String get dropLineBreak => replaceAll('\n', '');
  String get base64ToUtf8 => utf8.decode(base64.decode(this));

  /// Get extension by file name/path, returns `null` instead of empty string
  ///
  /// 1.dart -> 'dart'
  ///
  /// license -> null
  String? get ext {
    final dotext = p.extension(this);
    if (dotext.isEmpty) return null;
    return dotext.substring(1);
  }

  String get normalizedHtml {
    return '<div class="markdown-body">$this</div>';
  }
}
