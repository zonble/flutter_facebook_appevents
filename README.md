# flutter_facebook_appevents

2019 © Weizhong Yang.

[![Actions Status](https://github.com/zonble/flutter_facebook_appevents/workflows/Build/badge.svg)](https://github.com/zonble/flutter_facebook_appevents/actions)

The package bridges [Facebook App Events](https://developers.facebook.com/docs/app-events/)
feature to your Flutter app.

It helps you to install Facebook SDK 5.x for iOS and Android, and makes your app
to start sending events to Facebook automatically once you complete the
configuration for your app. You can track additional events with the package, if
you want to.

## Installation

Add the following line to your pubspec.yaml file

```yaml
dependencies:
  flutter_facebook_appevents:
    git: "git@gitlab.kkinternal.com:xddd/flutter_facebook_appevents.git"
```

The call `flutter packages get`.

## Configuration

You need add additional configuration to your app in order to integrate Facebook
SDK on both iOS and Android platform.

### iOS

Please add following lines to your Info.plist file:

```xml
<key>FacebookAppID</key>
<string>[YOUR_FB_APP_ID]</string>
<key>FacebookDisplayName</key>
<string>[YOUR_FB_APP_NAME]</string>
<key>FacebookAutoLogAppEventsEnabled</key>
<true/>
<key>FacebookAdvertiserIDCollectionEnabled</key>
<true/>
<key>CFBundleURLTypes</key>
<array>
    <dict>
        <key>CFBundleTypeRole</key>
        <string>Editor</string>
        <key>CFBundleURLName</key>
        <string>Facebook</string>
        <key>CFBundleURLSchemes</key>
        <array>
            <string>fb[YOUR_FB_APP_ID]</string>
        </array>
    </dict>
</array>
```

Your Facebook app ID and display name are required. On the other hand,
you can decide to enable auto-log app events and collecting advertiser
ID or not by your self.

### Android

Please add the following lines to the `application` scope in your
AndroidManifest.xml file:

```xml
<meta-data
    android:name="com.facebook.sdk.ApplicationId"
    android:value="@string/facebook_app_id" />
<meta-data
    android:name="com.facebook.sdk.AutoLogAppEventsEnabled"
    android:value="true" />
<meta-data
    android:name="com.facebook.sdk.AutoInitEnabled"
    android:value="true" />
<meta-data
    android:name="com.facebook.sdk.AdvertiserIDCollectionEnabled"
    android:value="false" />
```

Then add create a file `strings.xml` under app->src->main->res->values, and add
following lines:

```xml
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="facebook_app_id">[YOUR_FB_APP_ID]</string>
    <string name="fb_login_protocol_scheme">fb[YOUR_FB_APP_ID]</string>
</resources>
```

## Manual Events

You can track additional events using the package as well. To track a manual
event, just call `FacebookAppEvents.logEvent()`. For example

``` dart
FacebookAppEvents.logEvent("EVENT_NAME", {"PARAMETER_NAME": "VALUE"}))
```

You can take a look at the classes like `EventName` and `ParameterName` to find
the events and parameters that Facebook supports.

## Notes

I wrote the package merely for my own need, because I could not find any package
for Facebook App Events in June, 2019. However, I found there are various great
packages for the same purpose when I published the package. You may want to
take a look on the packages:

- [facebook_app_events](https://pub.dev/packages/facebook_app_events) by oddbit.id.
- [facebook_analytics_plugin](https://pub.dev/packages/facebook_analytics_plugin) by Khalit Hartmann.
