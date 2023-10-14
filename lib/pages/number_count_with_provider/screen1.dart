import 'package:api_integration1/pages/number_count_with_provider/screen2.dart';
import 'package:api_integration1/provider/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.navigate_next_outlined),
      ),
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Consumer<CountProvider>(
        builder: (context, value, child) {
          final count = value.count;
          return Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  count.toString(),
                  style: TextStyle(fontSize: 24),
                ),
                Container(
                  margin: EdgeInsets.only(top: 26),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.amber,
                        child: IconButton(
                          onPressed: () {
                            value.incrementNumber();
                          },
                          icon: Icon(Icons.add),
                        ),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Container(
                        color: Colors.blue,
                        child: IconButton(
                          onPressed: () {
                            value.decrementCount();
                          },
                          icon: Icon(
                            Icons.horizontal_rule_outlined,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
