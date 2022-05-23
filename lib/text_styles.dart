import 'package:flutter/material.dart';

class BodySmallGreyUpper extends StatelessWidget {
  const BodySmallGreyUpper({Key? key, required this.value}) : super(key: key);

  final String value;

  @override
  Widget build(BuildContext context) {
    return Text(
      value.toUpperCase(),
      style: TextStyle(
        color: Colors.grey,
        fontSize: Theme.of(context).textTheme.bodySmall?.fontSize ?? 14,
      ),
    );
  }
}

class BodySmallGrey extends StatelessWidget {
  const BodySmallGrey({Key? key, required this.value}) : super(key: key);

  final String value;

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: TextStyle(
        color: Colors.grey,
        fontSize: Theme.of(context).textTheme.bodySmall?.fontSize ?? 14,
      ),
    );
  }
}

class BodyMediumBlack extends StatelessWidget {
  const BodyMediumBlack({Key? key, required this.value}) : super(key: key);

  final String value;

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: TextStyle(
          color: Colors.black,
          fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize ?? 14),
    );
  }
}

class TitleMediumCenter extends StatelessWidget {
  const TitleMediumCenter({Key? key, required this.value}) : super(key: key);

  final String value;

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      textAlign: TextAlign.center,
      style: TextStyle(
        height: 1.5,
        fontSize: Theme.of(context).textTheme.titleMedium?.fontSize ?? 14,
      ),
    );
  }
}
