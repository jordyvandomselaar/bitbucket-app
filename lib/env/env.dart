import 'dart:async';
import "dart:convert";

import 'package:flutter/services.dart';

class Env {
  static dynamic get(String key) async {
    Map<String, String> env = await _read();

    return env[key];
  }

  static Future<Map<String, String>> _read() async {
    String content = await rootBundle.loadString("lib/assets/.env.json", cache: true);

    return new Future.value(
        json.decode(content)
    );
  }
}
