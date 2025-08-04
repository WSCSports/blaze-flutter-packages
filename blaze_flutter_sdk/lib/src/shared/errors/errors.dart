import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'errors.freezed.dart';
part 'errors.g.dart';

/// Error interface - represents data from BlazeError
@freezed
class BlazeError with _$BlazeError {
  const factory BlazeError({
    String? domain,
    String? reason,
    String? message,
    Map<String, String>? metadata,
    String? underlyingError,
  }) = _BlazeError;

  factory BlazeError.fromJson(Map<String, dynamic> json) =>
      _$BlazeErrorFromJson(json);
}

class BlazeException implements Exception {
  final BlazeError blazeError;

  BlazeException(this.blazeError);

  @override
  String toString() =>
      'BlazeException - For access to more details please cast it into `BlazeException`: $blazeError';
}

/// Helper function to parse BlazeError from PlatformException
BlazeError? tryParseBlazeError(dynamic exception) {
  // We set on the native side a special code for errors that can be converted to BlazeError.
  if (exception is PlatformException &&
      exception.code == 'BLAZE_CONVERTIBLE_ERROR' &&
      exception.details is String) {
    try {
      final jsonMap =
          jsonDecode(exception.details as String) as Map<String, dynamic>;
      return BlazeError.fromJson(jsonMap);
    } catch (e) {
      return null;
    }
  }

  return null;
}

/// Maps PlatformException to BlazeException if it contains BlazeError, otherwise rethrows original
void mapToBlazeErrorOrRethrow(dynamic exception) {
  final blazeError = tryParseBlazeError(exception);
  if (blazeError != null) {
    throw BlazeException(blazeError);
  }
  throw exception;
}
