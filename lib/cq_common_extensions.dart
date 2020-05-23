library cq_common_extensions;

import 'dart:math';
import 'package:flutter/material.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

class ImageList extends StatelessWidget {
  const ImageList({
    Key key,
    @required this.rnd,
  }) : super(key: key);

  final Random rnd;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 200,
          child: ListView.builder(
            itemCount: 100,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.7), BlendMode.exclusion),
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://loremflickr.com/150/200/music?lock=$index'),
                      )),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'When you wake up',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                  height: 200,
                  width: 150,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
