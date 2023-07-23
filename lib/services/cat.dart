import 'dart:convert';
import 'package:http/http.dart' as http;

class Cat {
  final String fact;

  Cat({required this.fact});

  factory Cat.fromJson(Map<String, dynamic> json) {
    return Cat(
      fact: json['fact'],
    );
  }
}

Future<Cat> fetchCatFacts() async {
  final response = await http.get(Uri.parse("https://catfact.ninja/fact"));

  if (response.statusCode == 200) {
    return Cat.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load joke');
  }
}
