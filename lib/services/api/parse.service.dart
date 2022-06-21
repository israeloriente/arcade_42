import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

/// Init Parse Server Backend
void initParse() async {
  var keyApplicationId = dotenv.get('APP_ID', fallback: '');
  var keyClientKey = dotenv.get('CLIENT_KEY', fallback: '');
  var keyParseServerUrl = dotenv.get('SERVER_URL', fallback: '');

  // Function to initialize Parse Server SDK
  await Parse()
      .initialize(keyApplicationId, keyParseServerUrl,
          clientKey: keyClientKey, autoSendSessionId: true)
      .catchError((e) {
    // if some error occurs, print it
    if (kDebugMode) {
      print(e);
    }
  });
}
