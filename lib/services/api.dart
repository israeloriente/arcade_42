// ignore_for_file: avoid_print

import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

/// Init Parse Server Backend
void initParse() async {
  const keyApplicationId = 'EhavhSJ6IRfT5dUEwmd5WUr76WtGWVkXBYiJ2Wh7';
  const keyClientKey = 'PI06lcR289BrF4f90z6Pgun7TwCrxNpxc5BH9mrE';
  const keyParseServerUrl = 'https://parseapi.back4app.com';

  // Function to initialize Parse Server SDK
  // Without initialization nothing can be done
  await Parse()
      .initialize(keyApplicationId, keyParseServerUrl,
          clientKey: keyClientKey, autoSendSessionId: true)
      .catchError((e) {
    // if some error occurs, print it
    print(e);
  });

  // Testing create the first object
  var firstObject = ParseObject('Teste')..set('message', 'Hey, First message');
  var response = await firstObject.save();
  print('done');
  print(response);
}
