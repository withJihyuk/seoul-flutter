import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:seoul_media/utils/data.dart';

fetchEventData() async {
  const endpoint = String.fromEnvironment('API_ENDPOINT');

  var response = await http.get(Uri.parse('http://$endpoint/culture'));

  if (response.statusCode == 200) {
    final decodeData = utf8.decode(response.bodyBytes);
    final jsonData = json.decode(decodeData);

    if (jsonData.containsKey('culturalEventInfo')) {
      var data = jsonData['culturalEventInfo']['row'];
      if (data is List && data.isNotEmpty) {
        return data
            .map<Event>((eventJson) => Event.fromJson(eventJson))
            .toList();
      }
    }
  } else {
    // 리턴 값 변경 가능
    Map<String, Object> error = {'요청에 실패 했습니다': 500};
    return error;
  }
}
