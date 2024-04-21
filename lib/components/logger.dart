import 'dart:developer';

import 'package:flutter/foundation.dart';


class Logger {
  static void info(String data) {
    log('🛈\x1B[33m INFO: $data\x1B[0m');
  }

  static void success(dynamic data) {
    log('✅\x1B[32m SUCCESS: $data\x1B[0m');
  }

  static void error(dynamic data) {
    log('❌\x1B[31m ERROR: $data\x1B[0m');
  }

  static void devPrint(dynamic data) {
    debugPrint(data);
  }
}
