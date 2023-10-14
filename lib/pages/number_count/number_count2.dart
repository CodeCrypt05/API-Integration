import 'package:api_integration1/bloc/count_bloc.dart';
import 'package:api_integration1/bloc/count_event.dart';
import 'package:api_integration1/bloc/count_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NumberCount2 extends StatefulWidget {
  const NumberCount2({super.key});

  @override
  State<NumberCount2> createState() => _NumberCount2State();
}

class _NumberCount2State extends State<NumberCount2> {
  @override
  Widget build(BuildContext context) {
    CountBlock countBloc = BlocProvider.of<CountBlock>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.navigate_next_outlined),
      ),
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CountBlock, CountState>(
              builder: (context, state) {
                if (state is InitialState) {
                  final count = (state as InitialState).count;
                  return Text(
                    count.toString(),
                    style: TextStyle(fontSize: 24),
                  );
                }
                return Container();
              },
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
                        countBloc.add(IncrementEvent());
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
                        countBloc.add(DecrementEvent());
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
      ),
    );
  }
}
