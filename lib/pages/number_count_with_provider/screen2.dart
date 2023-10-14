import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
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
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1",
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
                      onPressed: () {},
                      icon: Icon(Icons.add),
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Container(
                    color: Colors.blue,
                    child: IconButton(
                      onPressed: () {},
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
      ),
    );
  }
}
