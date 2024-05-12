import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:seoul_media/utils/data.dart';

fetchEventData() async {
  Uri url = Uri.parse("https://api.mya.ong/culture");
  var response = await http.get(url);

  if (response.statusCode == 200) {
    final decodeData = utf8.decode(response.bodyBytes);
    final jsonData = json.decode(decodeData);

    if (jsonData.containsKey('culturalEventInfo')) {
      var data = jsonData['culturalEventInfo']['row'];
      print(data);

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