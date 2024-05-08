import 'package:flutter/material.dart';

class PaddedColumn extends StatelessWidget {
  final String name;

  const PaddedColumn( {super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(name),
                      ),
                    ],
                  );
  }
}