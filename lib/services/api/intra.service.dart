import 'package:http/http.dart' as http;

Future<http.Response> firstFetch() {
  return http.get(Uri.parse('url_example'));
}
