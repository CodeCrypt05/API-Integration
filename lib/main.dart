import 'package:api_integration1/bloc/count_bloc.dart';
import 'package:api_integration1/pages/number_count/number_count1.dart';
import 'package:api_integration1/pages/number_count_with_provider/screen1.dart';
import 'package:api_integration1/provider/count_provider.dart';
import 'package:api_integration1/screens/shimmer_wffect.dart';
import 'package:flutter/material.dart';

import 'package:api_integration1/screens/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CountProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Screen1(),
      ),
    );
  }
}
