package com.kkbox.flutter_facebook_appevents_example

import android.os.Bundle

import io.flutter.app.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant
import com.facebook.FacebookSdk
import com.facebook.appevents.AppEventsLogger


class MainActivity : FlutterActivity() {
  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    GeneratedPluginRegistrant.registerWith(this)
//    FacebookSdk.sdkInitialize(getApplicationContext());
//    AppEventsLogger.activateApp(this)
  }
}
