import 'package:flutter/material.dart';

import 'package:api_integration1/data/dummy_data.dart';
import 'package:api_integration1/screens/fetch_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Integration'),
        elevation: 4,
      ),
      body: ListView.builder(
          itemCount: category_title.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(category_title[index].title),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => FetchScreen(
                              category: category_title[index],
                              index: category_title[index],
                            )),
                  );
                },
              ),
            );
          }),
    );
  }
}
