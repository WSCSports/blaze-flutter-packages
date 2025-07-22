import 'package:flutter/foundation.dart';

/// Blaze SDK Logger utility for detailed exception logging
class BlazeLogger {
  /// Prints detailed exception information including context for serialization errors
  ///
  /// [exception] The exception that occurred
  /// [stackTrace] The stack trace of the exception
  /// [context] Optional context information (e.g., method name, data being parsed)
  static void blazeDebugPrintException(
    Object exception,
    StackTrace stackTrace, {
    String? context,
  }) {
    debugPrint('=== BLAZE EXCEPTION ===');
    debugPrint('Context: ${context ?? 'Unknown'}');
    debugPrint('Exception: $exception');
    debugPrint('Exception type: ${exception.runtimeType}');
    debugPrint('Stack trace:');
    debugPrint(stackTrace.toString());
    debugPrint('=======================');
  }
}
