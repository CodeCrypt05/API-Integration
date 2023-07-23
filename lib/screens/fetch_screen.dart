import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'package:api_integration1/widgets/card_and_button.dart';
import 'package:api_integration1/services/cat.dart';
import 'package:api_integration1/services/joke.dart';
import 'package:api_integration1/models/category.dart';

class FetchScreen extends StatefulWidget {
  const FetchScreen({super.key, required this.category, required this.index});
  final Category category;
  final Category index;

  @override
  State<FetchScreen> createState() => _FetchScreenState();
}

class _FetchScreenState extends State<FetchScreen> {
  late Future<Joke> _jokeData;
  late Future<Cat> _catFactData;
  String str = "vaibhav";

  Future<void> _refreshData() async {
    setState(() {
      _jokeData = fetchJoke();
      _catFactData = fetchCatFacts();
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget bodyWidget;
    if (widget.category.index == 0) {
      bodyWidget = _catBody(context);
    } else {
      bodyWidget = _JokeBody(context);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.title),
      ),
      body: bodyWidget,
    );
  }

  FutureBuilder<Cat> _catBody(BuildContext context) {
    return FutureBuilder<Cat>(
        future: fetchCatFacts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return getShimmerLoading();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return CardAndButton(
                value1: snapshot.data!.fact,
                value2: '',
                onPressed: _refreshData);
          }
        });
  }

  FutureBuilder<Joke> _JokeBody(BuildContext context) {
    return FutureBuilder<Joke>(
        future: fetchJoke(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return getShimmerLoading();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return CardAndButton(
                value1: snapshot.data!.setup,
                value2: snapshot.data!.punchline,
                onPressed: _refreshData);
          }
        });
  }

  Shimmer getShimmerLoading() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: SizedBox(
        height: 100,
        child: Card(
          color: Colors.white,
          margin: EdgeInsets.only(left: 18, right: 18, top: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                ),
                Container(
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
