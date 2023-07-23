import 'dart:convert';
import 'package:http/http.dart' as http;

class Joke {
  final String setup;
  final String punchline;

  Joke({required this.setup, required this.punchline});

  factory Joke.fromJson(Map<String, dynamic> json) {
    return Joke(
      setup: json['setup'],
      punchline: json['punchline'],
    );
  }
}

Future<Joke> fetchJoke() async {
  final response = await http
      .get(Uri.parse("https://official-joke-api.appspot.com/random_joke"));

  if (response.statusCode == 200) {
    return Joke.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load joke');
  }
}
