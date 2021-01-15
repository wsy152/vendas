import 'package:flutter/material.dart';

Future push(context, page, {replace = false}) {
  if (replace) {
    return Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext contex) {
      return page;
    }));
  }
  return Navigator.push(context,
      MaterialPageRoute(builder: (BuildContext contex) {
    return page;
  }));
}
