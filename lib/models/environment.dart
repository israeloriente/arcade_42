import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String get appId {
    return dotenv.get('APP_ID');
  }

  static String get clientKey {
    return dotenv.get('CLIENT_KEY');
  }

  static String get serverUrl {
    return dotenv.get('SERVER_URL');
  }

  static String get intraUrl {
    return dotenv.get('INTRA_URL');
  }
}
