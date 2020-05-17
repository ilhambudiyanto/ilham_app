import 'package:http/http.dart' as http;
import 'dart:convert';
class User
{
  String id;
  String name;

  User({this.id, this.name});

  factory User.createUser(Map<String, dynamic> object)
  {
    return User(
        id: object['id'].toString(),
        name: object['name'] + " " + object['job'] );
  }

  static Future<User> connectToAPI(String id) async
  {String apiURL = "https://thawing-stream-50060.herokuapp.com/api/users/" + id;
    var apiResult = await http.get(apiURL);
    var jsonObject = json.decode(apiResult.body);

    return User.createUser(jsonObject);
  }
}