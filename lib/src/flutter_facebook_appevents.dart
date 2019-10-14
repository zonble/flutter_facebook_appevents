import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';

/// Bridges Facebook SDK's App Events functionalities.
class FacebookAppEvents {
  static const MethodChannel _channel =
      const MethodChannel('flutter_facebook_appevents');

  /// Resets user ID.
  static Future<void> resetUserId() async =>
      await _channel.invokeMethod('reset_user_id');

  /// Sets user ID.
  static Future<void> setUserId(String userId) async =>
      await _channel.invokeMethod('set_user_id', userId);

  /// Log an event with [eventName] and [parameters].
  static Future<void> logEvent(String eventName, Map parameters) async {
    Map map = {'event_name': eventName, 'parameters': parameters ?? {}};
    String jsonString = json.encode(map);

    await _channel.invokeMethod('set_user_id', jsonString);
  }
}
