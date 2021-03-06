// ignore_for_file: avoid_print
import 'package:arcade_42/models/environment.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

/// Init Parse Server Backend
void initParse() async {
  var keyApplicationId = Environment.appId;
  var keyClientKey = Environment.clientKey;
  var keyParseServerUrl = Environment.serverUrl;

  // Function to initialize Parse Server SDK
  // Without initialization nothing can be done
  await Parse()
      .initialize(keyApplicationId, keyParseServerUrl,
          clientKey: keyClientKey, autoSendSessionId: true)
      .catchError((e) {
    // if some error occurs, print it
    print(e);
  });
}
