import 'package:flutter/material.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 8, 16),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text(
            "Breaking Space News",
            style: TextStyle(
                fontSize: 28,
                color: Colors.black54,
                fontWeight: FontWeight.w800),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.rocket,
              color: Colors.black54,
            ),
          )
        ],
      ),
    );
  }
}
