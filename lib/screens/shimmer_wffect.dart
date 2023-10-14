import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffect extends StatelessWidget {
  const ShimmerEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Shimmer Effect"),
        ),
        body: Shimmer.fromColors(
          baseColor:
              Colors.grey.shade300, // Color when the animation is not running
          highlightColor: Colors.grey.shade100,
          direction: ShimmerDirection.ltr,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 13,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                mainAxisExtent: 400,
              ),
              itemCount: 10,
              itemBuilder: ((context, index) {
                return GridTile(
                    child: Container(
                  height: 800.0,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ));
              }),
            ),
          ),
        ));
  }
}
