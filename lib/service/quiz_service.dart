import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

class KeyModal {}

_modalRouter(BuildContext context) async {
  String routeName = await showDialog(
    context: context,
    builder: (BuildContext context) => new ModalSheet(),
  );
  Navigator.of(context).pushNamed(routeName);
}

class ModalSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new FlatButton(
        onPressed: () => Navigator.of(context).pop('/test'),
        child: const Text('test'),
      ),
    );
  }
}
