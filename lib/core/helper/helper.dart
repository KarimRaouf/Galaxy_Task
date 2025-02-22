import 'package:flutter_screenutil/flutter_screenutil.dart';

class Helper {
  /// Get Dio Header
  static Map<String, dynamic> getHeaders() {
    return {}..removeWhere((key, value) => value == null);
  }
}
