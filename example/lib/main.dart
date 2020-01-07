import 'package:flutter/material.dart';
import 'package:flutter_facebook_appevents/flutter_facebook_appevents.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  child: Text("Reset User ID"),
                  onPressed: () => FacebookAppEvents.resetUserId()),
              FlatButton(
                  child: Text("Set User ID"),
                  onPressed: () => FacebookAppEvents.setUserId("user")),
              FlatButton(
                  child: Text("Log Event"),
                  onPressed: () =>
                      FacebookAppEvents.logEvent("test_", {"k": "v"})),
            ],
          ),
        ),
      ),
    );
  }
}
